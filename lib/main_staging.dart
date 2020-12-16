import 'package:flutter/material.dart';
import 'package:tigerdate/app_config.dart';
import 'package:tigerdate/screens/router.dart';

import 'main_application.dart';

void main() {
  runApp(
    AppConfig(
      appName: 'TigerDate Staging',
      debugTag: false,
      flavorName: 'stg',
      initialRoute: AppRouter.HOME,
      child: MainApplication(),
    ),
  );
}
