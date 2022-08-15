import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'common/config/routes/app_pages.dart';
import 'common/config/themes/app_theme.dart';
import 'common/constans/app_constants.dart';
import 'common/constans/colors.dart';
import 'common/utils/services/country_provider.dart';
import 'common/utils/services/locale_provider.dart';
import 'common/utils/services/toggle_obscure_password.dart';
import 'features/authantication/domain/usecases/auth_usecase.dart';
import 'features/authantication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'features/authantication/presentation/bloc/login_bloc/login_bloc.dart';
import 'features/authantication/presentation/bloc/simple_bloc_observer.dart';
import 'features/authantication/presentation/screens/bloc_navigate.dart';

import 'l10n/l10n.dart';
import 'locator_service.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialization of the locator service
  await di.init();
  //Register local storage Hive
  await Hive.initFlutter();

  BlocOverrides.runZoned(
    () => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
              create: (context) =>
                  di.sl<AuthenticationBloc>()..add(AppStarted())),
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(
              useCase: di.sl<AuthUseCase>(),
            ),
          ),
        ],
        child: const App(),
      ),
    ),
    blocObserver: AppBlocObserver(),
  );

  FlutterNativeSplash.remove();
}

class App extends StatefulWidget {
  static const routeName = Routes.initial;

  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  //final _navigatorKey = GlobalKey<NavigatorState>();
  late StreamSubscription internetSubscription;
  late AnimationController localAnimationController;

  //NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  void initState() {
    super.initState();
    //Tracking Internet connection changes
    internetSubscription =
        InternetConnectionChecker().onStatusChange.listen((status) {
      final hasInternet = status == InternetConnectionStatus.connected;
      if (!hasInternet) {
        showSimpleNotification(
          const Text('There is no Internet connection',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: Font.sfText,
                fontSize: 18,
                color: Colors.white,
              )),
          background: ColorApp.error,
        );
      }
    });
  }

  @override
  void dispose() {
    internetSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ToggleObscurePassword>(
            create: (context) => ToggleObscurePassword()),
        ChangeNotifierProvider<CountryProvider>(
            create: (context) => CountryProvider()..loadCountries()),
        ChangeNotifierProvider<LocaleProvider>(
            create: (context) => LocaleProvider()),
      ],
      builder: (context, child) {
        final provider = Provider.of<LocaleProvider>(context);
        return OverlaySupport.global(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme().themeLight,
            darkTheme: AppTheme().themeDark,
            initialRoute: Routes.initial,
            onUnknownRoute: (RouteSettings settings) =>
                AppPages().onUnknownRoute(settings, context),
            onGenerateRoute: (RouteSettings settings) =>
                AppPages().generateRoute(settings, context),
            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: BlocNavigate(
              useCase: di.sl<AuthUseCase>(),
              authenticationBloc: di.sl(),
            ),
          ),
        );
      },
    );
  }
}
