import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/config/routes/app_pages.dart';
import '../bloc/authentication_bloc/authentication_bloc.dart';
import '../components/login_form.dart';

class LoginView extends StatelessWidget {
  static const routeName = Routes.login;

  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: SizedBox(),
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: LoginForm(),
        ),
      ),
    );
  }
}
