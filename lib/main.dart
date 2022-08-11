import 'package:flutter_template_clean_architecture/features/presentation/bloc/authentication_bloc/authentication_bloc_bloc.dart';
import 'package:flutter_template_clean_architecture/common/config/routes/app_pages.dart';
import 'package:flutter_template_clean_architecture/common/config/themes/app_theme.dart';
import 'package:flutter_template_clean_architecture/features/presentation/bloc/simple_bloc_observer.dart';
import 'package:flutter_template_clean_architecture/features/presentation/screens/bloc_navigate.dart';
import 'package:flutter_template_clean_architecture/locator_service.dart' as di;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_clean_architecture/locator_service.dart';

import 'locator_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  BlocOverrides.runZoned(
    () => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
              create: (context) =>
                  sl<AuthenticationBloc>()..add(AuthenticationStarted())),

          // BlocProvider<FormBloc>(
          //   create: (context) => FormBloc(
          //       AuthenticationRepositoryImpl(), DatabaseRepositoryImpl()),
          // ),
          // BlocProvider(
          //   create: (context) => DatabaseBloc(DatabaseRepositoryImpl()),
          // )
        ],
        child: App(),
      ),
    ),
    blocObserver: AppBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appPages = AppPages();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: Routes.initial,
      onUnknownRoute: (RouteSettings settings) =>
          appPages.onUnknownRoute(settings, context),
      onGenerateRoute: (RouteSettings settings) =>
          appPages.generateRoute(settings, context),
      home: BlocNavigate(),
    );
  }
}
