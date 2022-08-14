import 'package:crypterium_flutter/features/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:crypterium_flutter/common/config/routes/app_pages.dart';
import 'package:crypterium_flutter/features/presentation/components/auth/login_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                onPressed: () {
                  BlocProvider.of<AuthenticationBloc>(context).add(
                    Guest(),
                  );
                },
              )
            ],
          ),
          body: LayoutBuilder(
            builder: ((context, constraints) {
              var _height = constraints.constrainHeight();
              return _height < 500
                  ? SingleChildScrollView(
                      child: LoginForm(
                        height: _height,
                      ),
                    )
                  : SingleChildScrollView(
                      child: LoginForm(
                        height: _height,
                      ),
                    );
            }),
          )),
    );
  }
}
