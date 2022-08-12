import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/authentication_bloc/authentication_bloc_bloc.dart';
import 'package:flutter_template_clean_architecture/features/presentation/screens/home_view.dart';
import 'package:flutter_template_clean_architecture/features/presentation/screens/login_view.dart';

class BlocNavigate extends StatelessWidget {
  const BlocNavigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is AuthenticationSuccess) {
          return const HomeView();
        } else {
          return const LoginView();
        }
      },
    );
  }
}
