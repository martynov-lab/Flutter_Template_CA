import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/features/authantication/presentation/screens/welcome_view.dart';
import '../../../../common/shared_components/progress_indicator.dart';
import '../../domain/usecases/auth_usecase.dart';
import '../bloc/authentication_bloc/authentication_bloc.dart';
import 'login_view.dart';
import 'screens.dart';

class BlocNavigate extends StatelessWidget {
  // static const routeName = Routes.initial;
  final AuthUseCase useCase;

  final AuthenticationBloc authenticationBloc;

  const BlocNavigate({
    Key? key,
    required this.useCase,
    required this.authenticationBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (_, state) {
        if (state is AuthenticationFirstVisit) {
          return const WelcomeView();
        }
        if (state is AuthenticationUninitialized) {
          return const LoadingIndicator();
        }
        if (state is AuthenticationAuthenticated) {
          return const HomeView();
        }
        if (state is AuthenticationUnauthenticated) {
          return const LoginView();
        }
        if (state is AuthenticationLoading) {
          return const LoadingIndicator();
        }
        if (state is AuthenticationError) {
          return const LoginView();
        }

        return const LoginView();
      },
    );
  }
}
