import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tigerdate/app_config.dart';

import 'localization/localization_services.dart';
import 'screens/router.dart';

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = AppConfig.of(context);

    return GetMaterialApp(
      title: config.appName,
      debugShowCheckedModeBanner: config.debugTag,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRouter.HOME,
    );
  }
}
