part of 'app_pages.dart';

// used to switch pages
class Routes {
  static const initial = _Paths.initial;
  static const home = _Paths.homeScreen;
  static const login = _Paths.loginScreen;
  static const register = _Paths.registerScreen;
  static const splash = _Paths.splash;
  static const welcome = _Paths.welcomeScreen;
  static const interPin = _Paths.interPinScreen;
}

// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const initial = '/';
  static const homeScreen = '/home';
  static const loginScreen = '/login';
  static const registerScreen = '/register';
  static const splash = '/splash';
  static const welcomeScreen = '/welcome';
  static const interPinScreen = '/interPin';

  // static const product = '/product';
}
