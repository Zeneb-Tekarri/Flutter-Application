import 'package:flutter/material.dart';
import 'package:onlineshoppingapp/core/constant/string.dart';
import 'package:onlineshoppingapp/features/auth/logIn/view/screen/logIn_screen.dart';
import 'package:onlineshoppingapp/features/onBoarding/view/onBoarding.dart';
import 'package:onlineshoppingapp/features/onBoarding/view/splash.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case Routes.logIn:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route ${settings.name}'),
                  ),
                ));
    }
  }
}
