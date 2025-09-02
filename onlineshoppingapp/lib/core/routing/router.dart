import 'package:flutter/material.dart';
import 'package:onlineshoppingapp/core/constant/string.dart';
import 'package:onlineshoppingapp/features/auth/view/splash.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => Splash());
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
