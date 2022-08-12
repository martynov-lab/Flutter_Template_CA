part of 'form_validate_bloc.dart';

abstract class FormState extends Equatable {
  const FormState();
}

class FormInitial extends FormState {
  @override
  List<Object?> get props => [];
}

class FormsValidate extends FormState {
  const FormsValidate({
    required this.phone,
    required this.email,
    required this.password,
    required this.isEmailValid,
    required this.isPhoneValid,
    required this.isPasswordValid,
    required this.isFormValid,
    required this.isLoading,
    this.errorMessage = "",
    required this.isFormValidateFailed,
    this.isFormSuccessful = false,
  });
  final String phone;
  final String email;
  final String password;
  final bool isEmailValid;
  final bool isPhoneValid;
  final bool isPasswordValid;
  final bool isFormValid;
  final bool isFormValidateFailed;
  final bool isLoading;
  final String errorMessage;
  final bool isFormSuccessful;

  FormsValidate copyWith({
    String? phone,
    String? email,
    String? password,
    bool? isEmailValid,
    bool? isPhoneValid,
    bool? isPasswordValid,
    bool? isFormValid,
    bool? isLoading,
    String? errorMessage,
    bool? isFormValidateFailed,
    bool? isFormSuccessful,
  }) {
    return FormsValidate(
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      isEmailValid: isEmailValid ?? this.isEmailValid,
      isPhoneValid: isPhoneValid ?? this.isPhoneValid,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isFormValid: isFormValid ?? this.isFormValid,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      isFormValidateFailed: isFormValidateFailed ?? this.isFormValidateFailed,
      isFormSuccessful: isFormSuccessful ?? this.isFormSuccessful,
    );
  }

  @override
  List<Object?> get props => [
        phone,
        email,
        password,
        isEmailValid,
        isPasswordValid,
        isFormValid,
        isLoading,
        errorMessage,
        isFormValidateFailed,
        isFormSuccessful
      ];
}
