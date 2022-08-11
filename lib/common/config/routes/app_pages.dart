import 'package:flutter/material.dart';
import 'package:flutter_template_clean_architecture/features/presentation/screens/home_view.dart';
import 'package:flutter_template_clean_architecture/features/presentation/screens/login_view.dart';

part 'app_routes.dart';

class AppPages {
  // static const initial = Routes.index;
  // static const home = Routes.home;
  // static const login = Routes.login;

  MaterialPageRoute? generateRoute(
      RouteSettings settings, BuildContext context) {
    switch (settings.name) {
      case LoginView.routeName:
        return MaterialPageRoute(builder: (BuildContext context) {
          return LoginView();
        });
      case HomeView.routeName:
        return MaterialPageRoute(builder: (BuildContext context) {
          return HomeView();
        });

      // case OtherScreen.routeName:
      //   final args = settings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(builder: (BuildContext context) {
      //     if (args != null && args.containsKey('user')) {
      //       return WorkerDetailsPage(user: args['user']);
      //     }
      //     return const WorkerListPage();
      //   });

      default:
        MaterialPageRoute(builder: (BuildContext context) {
          return LoginView();
        });
    }
    return null;
  }

  MaterialPageRoute? onUnknownRoute(
      RouteSettings settings, BuildContext context) {
    return MaterialPageRoute(builder: (BuildContext context) {
      return LoginView();
    });
  }
}
