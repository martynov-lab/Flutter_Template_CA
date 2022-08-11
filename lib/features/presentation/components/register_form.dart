import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/authentication_bloc/authentication_bloc_bloc.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/register_bloc/register_bloc_bloc.dart';
import 'package:flutter_template_clean_architecture/features/presentation/components/button_widget.dart';

class RegisterForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isButtonEnabled(RegisterState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  late RegisterBloc _registerBloc;

  @override
  void initState() {
    super.initState();
    _registerBloc = BlocProvider.of<RegisterBloc>(context);
    _emailController.addListener(_onEmailChange);
    _passwordController.addListener(_onPasswordChange);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.isFailure) {
          // Scaffold.of(context)
          //   ..removeCurrentSnackBar()
          //   ..showSnackBar(
          //     SnackBar(
          //       content: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Text('Register Failure'),
          //           Icon(Icons.error),
          //         ],
          //       ),
          //       backgroundColor: Color(0xffffae88),
          //     ),
          //   );
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    'Register Failure',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Icon(Icons.check_circle, color: Colors.white)
              ],
            ),
            backgroundColor: Colors.red[300],
            duration: const Duration(seconds: 2),
          ));
        }

        if (state.isSubmitting) {
          // Scaffold.of(context)
          //   ..removeCurrentSnackBar()
          //   ..showSnackBar(
          //     SnackBar(
          //       content: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Text('Registering...'),
          //           CircularProgressIndicator(
          //             valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          //           )
          //         ],
          //       ),
          //       backgroundColor: Color(0xffffae88),
          //     ),
          //   );
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    'Registering...',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                CircularProgressIndicator()
              ],
            ),
            backgroundColor: Colors.blue[200],
            duration: const Duration(seconds: 2),
          ));
        }

        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(context).add(
            AuthenticationSignedOut(),
          );
          Navigator.pop(context);
        }
      },
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    //autovalidate: true,
                    autocorrect: false,
                    validator: (_) {
                      return !state.isEmailValid ? 'Invalid Email' : null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    //autovalidate: true,
                    autocorrect: false,
                    validator: (_) {
                      return !state.isPasswordValid ? 'Invalid Password' : null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // GradientButton(
                  //   width: 150,
                  //   height: 45,
                  //   onPressed: () {
                  //     if (isButtonEnabled(state)) {
                  //       _onFormSubmitted();
                  //     }
                  //   },
                  //   text: Text(
                  //     'Register',
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  //   icon: Icon(
                  //     Icons.check,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  ButtonWidget(
                    text: 'Register',
                    onClicked: () {},
                    isActive: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onEmailChange() {
    _registerBloc.add(RegisterEmailChanged(email: _emailController.text));
  }

  void _onPasswordChange() {
    _registerBloc
        .add(RegisterPasswordChanged(password: _passwordController.text));
  }

  void _onFormSubmitted() {
    _registerBloc.add(RegisterSubmitted(
        email: _emailController.text, password: _passwordController.text));
  }
}
