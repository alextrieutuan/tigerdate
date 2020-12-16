import 'package:flutter/material.dart';
import 'package:tigerdate/utils/size_config.dart';

class AvatarWithBackground extends StatelessWidget {
  const AvatarWithBackground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/intro_bg_1.png",
          width: getProportionateScreenWidth(245),
          height: getProportionateScreenHeight(225),
        ),
        Positioned(
          bottom: getProportionateScreenHeight(33),
          left: getProportionateScreenWidth(45),
          child: ClipOval(
            child: Image.asset(
              "assets/images/intro-girl 1.png",
              width: getProportionateScreenWidth(150),
              height: getProportionateScreenHeight(150),
            ),
          ),
        ),
      ],
    );
  }
}
