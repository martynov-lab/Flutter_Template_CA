part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationFirstVisit extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationAuthenticated extends AuthenticationState {
  final UserEntity user;

  AuthenticationAuthenticated({required this.user});

  @override
  List<Object> get props => [user];
}

class AuthenticationError extends AuthenticationState {
  final String error;

  AuthenticationError({required this.error});

  @override
  List<Object> get props => [error];
}

class AuthenticationUnauthenticated extends AuthenticationState {}
