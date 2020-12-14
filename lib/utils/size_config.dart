import 'package:flutter/material.dart';

class SizedConfig {
  static double deviceWidth;
  static double deviceHeight;
  static bool isResponsiveFontSizeWidth;

  static final double designPhoneWidth = 375;
  static final double designPhoneHeight = 812;

  void initWithContext(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    deviceWidth = data.size.width;
    deviceHeight = data.size.height;
    isResponsiveFontSizeWidth = (deviceWidth / deviceHeight) < (9 / 16);
  }
}

double getProportionateScreenHeight(double value) {
  return (value / SizedConfig.designPhoneHeight) * SizedConfig.deviceHeight;
}

double getProportionateScreenWidth(double value) {
  return (value / SizedConfig.designPhoneWidth) * SizedConfig.deviceWidth;
}

double getProportionateFontSize(double value) {
  return SizedConfig.isResponsiveFontSizeWidth
      ? (value / SizedConfig.designPhoneWidth) * SizedConfig.deviceWidth
      : (value / SizedConfig.designPhoneHeight) * SizedConfig.deviceHeight;
}
