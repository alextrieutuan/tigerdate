import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tigerdate/styles/colors.dart';
import 'package:tigerdate/utils/gradien_color.dart';
import 'package:tigerdate/utils/size_config.dart';
import 'package:tigerdate/widgets/linear_gradient_mask.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizedConfig().initWithContext(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(8)),
              child: Row(
                children: <Widget>[
                  SizedBox(width: getProportionateScreenWidth(10)),
                  LinearGradientMask(
                    colors: [colorSeance, colorSeance],
                    child: SvgPicture.asset(
                      "assets/svgs/tiger_date_logo.svg",
                      width: getProportionateScreenWidth(91),
                      height: getProportionateScreenHeight(40),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: LinearGradientMask(
                        colors: [colorSeance, colorSeance],
                        child: SvgPicture.asset(
                          "assets/svgs/menu.svg",
                          width: getProportionateScreenWidth(91),
                          height: getProportionateScreenHeight(40),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10))
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(30)),
                      child: Column(
                        children: [
                          Text(
                            'home_screen_intro_1_header'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..shader = getLinearShaderGradient(
                                      [Color(0xffDA44bb), Color(0xff8921aa)],
                                    ),
                                ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: getProportionateScreenHeight(60)),
                          Text(
                            'home_screen_intro_1_title'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getProportionateFontSize(25)),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Text(
                            'home_screen_intro_1_description'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    fontSize: getProportionateFontSize(20)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
