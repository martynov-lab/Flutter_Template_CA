part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const initial = _Paths.initial;
  static const home = _Paths.homeScreen;
  static const login = _Paths.loginScreen;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const initial = '/';
  static const homeScreen = '/home';
  static const loginScreen = '/login';
  // static const splash = '/splash';
  // static const product = '/product';
}
