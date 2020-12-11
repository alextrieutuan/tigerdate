import 'package:get/get.dart';

class SizedConfig {
  static final double deviceWidth = Get.width;
  static final double deviceHeight = Get.height;
  static final bool isResponsiveFontSizeWidth =
      (deviceWidth / deviceHeight) < (9 / 16);

  static final double designPhoneWidth = 375;
  static final double designPhoneHeight = 812;
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
