import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class AppRouter {
  static const String HOME = "/home";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
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
