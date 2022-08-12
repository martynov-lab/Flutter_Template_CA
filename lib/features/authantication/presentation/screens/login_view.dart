import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/common/config/routes/app_pages.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/login_bloc/login_bloc_bloc.dart';
import 'package:flutter_template_clean_architecture/features/presentation/components/login_form.dart';

class LoginView extends StatelessWidget {
  static const routeName = Routes.login;
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(/*authRepository: _authRepository*/),
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 230, 230, 230),
              Color.fromARGB(255, 180, 184, 206),
            ],
          )),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                // CurvedWidget(
                //   child: Container(
                //     padding: const EdgeInsets.only(top: 100, left: 50),
                //     width: double.infinity,
                //     height: 300,
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //         colors: [Colors.white, Colors.white.withOpacity(0.4)],
                //       ),
                //     ),
                //     child: Text(
                //       'Login',
                //       style: TextStyle(
                //         fontSize: 40,
                //         color: Color(0xff6a515e),
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.only(top: 230),
                  child: LoginForm(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
