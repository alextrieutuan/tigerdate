import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tigerdate/styles/colors.dart';
import 'package:tigerdate/utils/gradien_color.dart';
import 'package:tigerdate/utils/size_config.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
    this.stringKey,
  }) : super(key: key);

  final String stringKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      stringKey.tr,
      style: Theme.of(context).textTheme.headline4.copyWith(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = getLinearShaderGradient(
                [
                  colorCerise,
                  colorSeance,
                ],
              ),
          ),
      textAlign: TextAlign.center,
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key key,
    @required this.stringKey,
  }) : super(key: key);

  final String stringKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      child: Text(
        stringKey.tr,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            .copyWith(fontSize: getProportionateFontSize(18)),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    @required this.stringKey,
  }) : super(key: key);

  final String stringKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      stringKey.tr,
      style: Theme.of(context).textTheme.bodyText1.copyWith(
          fontWeight: FontWeight.bold, fontSize: getProportionateFontSize(25)),
      textAlign: TextAlign.center,
    );
  }
}
