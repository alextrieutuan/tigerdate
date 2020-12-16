import 'package:flutter/material.dart';
import 'package:tigerdate/app_config.dart';
import 'package:tigerdate/screens/router.dart';

import 'main_application.dart';

void main() {
  runApp(
    AppConfig(
      appName: 'TigerDate',
      debugTag: false,
      flavorName: 'production',
      initialRoute: AppRouter.HOME,
      child: MainApplication(),
    ),
  );
}
