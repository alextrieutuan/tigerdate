import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tigerdate/styles/colors.dart';
import 'package:tigerdate/utils/size_config.dart';
import 'package:tigerdate/widgets/linear_gradient_mask.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
    this.pressedMenu,
  }) : super(key: key);

  final Function pressedMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      child: Row(
        children: <Widget>[
          SizedBox(width: getProportionateScreenWidth(10)),
          Image.asset(
            "assets/icons/tiger_date_logo.png",
            width: getProportionateScreenWidth(91),
            height: getProportionateScreenHeight(40),
          ),
          Expanded(
            child: Align(
              child: LinearGradientMask(
                colors: [colorSeance, colorSeance],
                child: GestureDetector(
                  onTap: pressedMenu,
                  child: SvgPicture.asset(
                    "assets/svgs/menu.svg",
                    width: getProportionateScreenWidth(91),
                    height: getProportionateScreenHeight(40),
                  ),
                ),
              ),
              alignment: Alignment.centerRight,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(10))
        ],
      ),
    );
  }
}
