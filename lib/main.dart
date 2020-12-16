import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tigerdate/lang/localization_services.dart';

import 'features/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TigerDate',
      debugShowCheckedModeBanner: false,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRouter.INTRO,
    );
  }
}
