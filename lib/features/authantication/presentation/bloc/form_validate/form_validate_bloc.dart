import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/features/data/models/user_model.dart';
import 'package:flutter_template_clean_architecture/features/data/repositories/auth_repository_impl.dart';

part 'form_validate_event.dart';
part 'form_validate_state.dart';

class FormBloc extends Bloc<FormEvent, FormsValidate> {
  final AuthenticationRepositoryImpl _authenticationRepository;
  //final DatabaseRepository _databaseRepository;
  FormBloc(
    this._authenticationRepository,
    /*this._databaseRepository*/
  ) : super(const FormsValidate(
          phone: '+7(000)000-00-00',
          email: "example@gmail.com",
          password: "",
          isEmailValid: true,
          isPhoneValid: true,
          isPasswordValid: true,
          isFormValid: false,
          isLoading: false,
          isFormValidateFailed: false,
        )) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<FormSubmitted>(_onFormSubmitted);
    //on<FormSucceeded>(_onFormSucceeded);
  }

  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  bool _isEmailValid(String email) {
    return _emailRegExp.hasMatch(email);
  }

  _onEmailChanged(EmailChanged event, Emitter<FormsValidate> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      email: event.email,
      isEmailValid: _isEmailValid(event.email),
    ));
  }

  final RegExp _phoneRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  bool _isPhoneValid(String phone) {
    return _phoneRegExp.hasMatch(phone);
  }

  _onPhoneChanged(PhoneChanged event, Emitter<FormsValidate> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      email: event.phone,
      isPhoneValid: _isPhoneValid(event.phone),
    ));
  }

  final RegExp _passwordRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  bool _isPasswordValid(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  _onPasswordChanged(PasswordChanged event, Emitter<FormsValidate> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      password: event.password,
      isPasswordValid: _isPasswordValid(event.password),
    ));
  }

  _onFormSubmitted(FormSubmitted event, Emitter<FormsValidate> emit) async {
    UserModel user = UserModel(
      email: state.email,
      password: state.password,
    );

    if (event.value == Status.signUp) {
      await _updateUIAndSignUp(event, emit, user);
    } else if (event.value == Status.signIn) {
      //await _authenticateUser(event, emit, user);
    }
  }

  _updateUIAndSignUp(
      FormSubmitted event, Emitter<FormsValidate> emit, UserModel user) async {
    emit(state.copyWith(
        errorMessage: "",
        isFormValid: _isPasswordValid(state.password) &&
            _isEmailValid(state.email) &&
            _isPhoneValid(state.email) /*&& 
        isLoading: true,*/
        ));
    if (state.isFormValid) {
      try {
        var authUser = await _authenticationRepository.signUp('user');
        UserModel updatedUser = user.copyWith(uid: '01', isVerified: true);
        if (updatedUser.isVerified!) {
          emit(state.copyWith(isLoading: false, errorMessage: ""));
        } else {
          emit(state.copyWith(
              isFormValid: false,
              errorMessage:
                  "Please Verify your email, by clicking the link sent to you by mail.",
              isLoading: false));
        }
      } on Exception catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: e.toString(), isFormValid: false));
      }
    } else {
      emit(state.copyWith(
          isLoading: false, isFormValid: false, isFormValidateFailed: true));
    }
  }
}
