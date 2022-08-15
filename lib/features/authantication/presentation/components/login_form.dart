import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_template_clean_architecture/locator_service.dart' as di;
import '../../../../common/constans/colors.dart';
import '../../../../common/shared_components/app_snackbar/custom_snackbar.dart';
import '../../../../common/shared_components/app_snackbar/top_snack_bar.dart';
import '../../../../common/shared_components/country_region.dart';
import '../../../../common/shared_components/input_widget.dart';
import '../../../../common/shared_components/ui_utils.dart';
import '../../../../common/utils/services/country_provider.dart';
import '../../data/models/country_region_model.dart';
import '../../domain/usecases/auth_usecase.dart';
import '../bloc/authentication_bloc/authentication_bloc.dart';
import '../bloc/login_bloc/login_bloc.dart';
import 'button_widget.dart';

class LoginForm extends StatefulWidget {


  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late AnimationController localAnimationController;
  final _controllerPhone = TextEditingController();
  final _controllerPassword = TextEditingController();
  CountryModel? selectedCountry;
  bool isSelected = false;
  var maskForPhone = MaskTextInputFormatter(
      mask: ' (###) ###-##-##', filter: {'#': RegExp(r'^[0-9]')});

  @override
  void initState() {
    super.initState();
    _controllerPhone.addListener(() {
      context.read<LoginBloc>().add(PhoneChanged(
            phone: isSelected
                ? '${selectedCountry!.phone}${_controllerPhone.text}'
                    .replaceAll(RegExp(r'[^0-9]'), '')
                : '+7${_controllerPhone.text}'
                    .replaceAll(RegExp(r'[^0-9]'), ''),
          ));
    });
    _controllerPassword.addListener(() {
      context
          .read<LoginBloc>()
          .add(PasswordChanged(password: _controllerPassword.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginBlocState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          showTopSnackBar(
            context,
            CustomSnackBar.error(
              message: state.errorMessage,
              button: GestureDetector(
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onTap: () => localAnimationController.reverse(),
              ),
            ),
            //persistent: true,
            onAnimationControllerInit: (controller) =>
                localAnimationController = controller,
          );
        }

        if (state.status.isSubmissionSuccess) {
          BlocProvider.of<AuthenticationBloc>(context).add(
            LoggedIn(token: state.token),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginBlocState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.only(
                top: 110, bottom: 40, left: 40, right: 40),
            height: 550, //MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login to your account',
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Haven't yet?",
                          style: Theme.of(context).textTheme.subtitle2,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () {
                            //! Преход на страницу регистрации
                            BlocProvider.of<AuthenticationBloc>(context)
                                .add(Register());
                            //Clean forms
                            BlocProvider.of<LoginBloc>(context)
                                .add(CleanState());
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontSize: 14,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 40),
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (!hasFocus) {
                            //context.read<FormBloc>().add(PhoneUnfocused());
                            //_phoneFocusNode.unfocus();
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Consumer<CountryProvider>(
                                builder: (context, servise, _) {
                              if (servise.isSelected) {
                                selectedCountry = servise.selected;
                                isSelected = true;
                                // maskForPhone = MaskTextInputFormatter(
                                //     mask: ' (###) ###-##-##',
                                //     filter: {'#': RegExp(r'^[0-9]')});

                                //FocusScope.of(context).requestFocus(_phoneFocusNode);
                                // print('Russia:  ${selectedCountry!.flag.toString()}');
                              }

                              return GestureDetector(
                                onTap: () {
                                  isSelected = false;
                                  servise.isSearch = false;
                                  servise.cleanSearch();
                                  servise.loadCountries();
                                  AppBottomSheet.showButtomSheet(
                                    context: context,
                                    isExpanded: false,
                                    heightOffset: 40,
                                    isWrapContent: false,
                                    child: const CountryRegion(),
                                  );
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .chipTheme
                                        .backgroundColor,
                                    border: state.phone.invalid
                                        ? Border.all(
                                            color: ColorApp.error, width: 1)
                                        : Border.all(
                                            color: Colors.transparent,
                                            width: 0),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(16.0)),
                                  ),
                                  child: isSelected
                                      ? Container(
                                          color: Colors.transparent,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Text(
                                                    selectedCountry!.flag!,
                                                    style: const TextStyle(
                                                        fontSize: 14)),
                                              ),
                                              Text(
                                                '+${selectedCountry!.phone}',
                                                style: state.phone.invalid
                                                    ? Theme.of(context)
                                                        .textTheme
                                                        .caption!
                                                        .copyWith(
                                                            color:
                                                                ColorApp.error)
                                                    : Theme.of(context)
                                                        .inputDecorationTheme
                                                        .labelStyle,
                                              ),
                                            ],
                                          ),
                                        )
                                      : Container(
                                          color: Colors.transparent,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Padding(
                                                padding:  EdgeInsets.only(
                                                    right: 5),
                                                child: Text('🇷🇺',
                                                    style:  TextStyle(
                                                        fontSize: 14)),
                                              ),
                                              Text(
                                                '+7',
                                                style: state.phone.invalid
                                                    ? Theme.of(context)
                                                        .textTheme
                                                        .caption!
                                                        .copyWith(
                                                            color:
                                                                ColorApp.error)
                                                    : Theme.of(context)
                                                        .inputDecorationTheme
                                                        .labelStyle,
                                              ),
                                            ],
                                          ),
                                        ),
                                ),
                              );
                            }),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child:  InputWidget(
                                context: context,
                                controller: _controllerPhone,
                                hint: ' (000) 000-00-00',
                                keyboardNumber: TextInputType.phone,
                                isValidate: state.phone.invalid,
                                maskForInput: [maskForPhone],
                                obscure: false,
                                isObscureSecond: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Focus(
                        onFocusChange: ((hasFocus) {
                          if (!hasFocus) {}
                        }),
                        child: InputWidget(
                          context: context,
                          controller: _controllerPassword,
                          hint: 'Password',
                          keyboardNumber: null,
                          // TextInputType.phone,
                          isValidate: state.password.invalid,
                          maskForInput: [],
                          obscure: true,
                          isObscureSecond: false,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Forgot your password? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            var currentFocus = FocusScope.of(context);

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }

                            //! Переход на востановление пароля

                          },
                          child: Text(
                            'Restore password',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontSize: 12,
                                      // color: Theme.of(context).primaryColorDark,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),


                BlocProvider<LoginBloc>(
                  create: ((_) => LoginBloc(
                        useCase: di.sl<AuthUseCase>(),
                      )),
                  child: ButtonWidget(
                    text: 'Confirm',
                    onPressed: () {
                      var currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      state.phone.value.isNotEmpty &&
                              state.password.value
                                  .isNotEmpty //state.status.isValidated
                          ? context.read<LoginBloc>().add(LoginSubmitted())
                          : () {};
                    },
                    isActive: state.phone.value.isNotEmpty &&
                        state.password.value
                            .isNotEmpty, //state.status.isValidated,
                    //style: Theme.of(context).textTheme.button,
                  ),

                  //LoginForm(),
                ),

                //),
                // SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controllerPhone.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }
}
