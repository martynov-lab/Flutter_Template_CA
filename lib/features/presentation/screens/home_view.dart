library homescreen;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_template_clean_architecture/common/config/routes/app_pages.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/authentication_bloc/authentication_bloc_bloc.dart';

// model

// component
// part '../components/login_button.dart';

class HomeView extends StatelessWidget {
  static const routeName = Routes.home;
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context)
                  .add(AuthenticationSignedOut());
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text('Hello'),
          ),
        ],
      ),
    );
  }
}
