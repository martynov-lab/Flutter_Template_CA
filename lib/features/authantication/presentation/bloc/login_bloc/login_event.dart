part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class PhoneChanged extends LoginEvent {
  const PhoneChanged({required this.phone});

  final String phone;

  @override
  List<Object> get props => [phone];
}

class PhoneUnfocused extends LoginEvent {}

class PasswordChanged extends LoginEvent {
  const PasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class CleanState extends LoginEvent {}

class PasswordUnfocused extends LoginEvent {}

class LoginSubmitted extends LoginEvent {}

