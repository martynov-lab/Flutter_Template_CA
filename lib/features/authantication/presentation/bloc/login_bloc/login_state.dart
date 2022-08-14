part of 'login_bloc.dart';

class LoginBlocState extends Equatable {
  final Phone phone;
  final Password password;

  final FormzStatus status;
  final PasswordValidationError errorPassword;
  final String errorMessage;
  final String token;

  const LoginBlocState({
    this.phone = const Phone.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.errorPassword = const PasswordValidationError(),
    this.errorMessage = '',
    this.token = '',
  });

  LoginBlocState copyWith({
    Phone? phone,
    Password? password,
    FormzStatus? status,
    PasswordValidationError? errorPassword,
    String? errorMessage,
    String? token,
  }) {
    return LoginBlocState(
      phone: phone ?? this.phone,
      password: password ?? this.password,
      status: status ?? this.status,
      errorPassword: errorPassword ?? this.errorPassword,
      errorMessage: errorMessage ?? this.errorMessage,
      token: token ?? this.token,
    );
  }

  @override
  List<Object> get props => [
        phone,
        password,
        status,
        token,
      ];
}

class PasswordValidationError {
  final bool empty;
  final bool noNumber;
  final bool short;

  const PasswordValidationError({
    this.empty = true,
    this.noNumber = true,
    this.short = true,
  });

  PasswordValidationError copyWith({
    bool? empty,
    bool? noNumber,
    bool? short,
  }) {
    return PasswordValidationError(
      empty: empty ?? this.empty,
      noNumber: noNumber ?? this.noNumber,
      short: short ?? this.short,
    );
  }
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure([String value = '']) : super.pure(value);

  const Password.dirty([String value = '']) : super.dirty(value);

  static PasswordValidationError errors = PasswordValidationError();

  // static final _passwordRegex =
  //     RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$');

  @override
  PasswordValidationError? validator(String value) {
    final isEmpty = value.isEmpty == true;
    final containsNumber = value.contains(RegExp('[0-9]')) == false;
    final shortPassword = value.length < 6;
    if (!isEmpty && !containsNumber && !shortPassword) {
      return null;
    } else {
      return errors.copyWith(
        empty: isEmpty,
        noNumber: containsNumber,
        short: shortPassword,
      );
    }
  }
}

enum PhoneValidationValid { invalid }

class Phone extends FormzInput<String, PhoneValidationValid> {
  const Phone.pure([String value = '']) : super.pure(value);

  const Phone.dirty([String value = '']) : super.dirty(value);

  static final _pnoneRegex = RegExp(
    r'^[\+]?[0-9]{0,4}[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[0-9]{4}$',
    //r'^[0-9]{0,4}[0-9]{10}$',
  );

  @override
  PhoneValidationValid? validator(String? value) {
    return _pnoneRegex.hasMatch(value ?? '') && value!.isNotEmpty
        ? null
        : PhoneValidationValid.invalid;
  }
}
