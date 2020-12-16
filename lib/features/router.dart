import 'package:flutter/material.dart';
import 'package:tigerdate/features/screens/home/home_screen.dart';

class AppRouter {
  static const String INTRO = "/introduction";
  static const String HOME = "/home";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case INTRO:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
