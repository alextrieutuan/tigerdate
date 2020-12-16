import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tigerdate/styles/colors.dart';
import 'package:tigerdate/utils/size_config.dart';
import 'package:tigerdate/widgets/linear_gradient_mask.dart';

class HomeAppBar extends StatefulWidget {
  HomeAppBar({Key key, this.pressedMenu}) : super(key: key);

  final Function pressedMenu;

  @override
  _HomeAppBarState createState() => _HomeAppBarState(pressedMenu);
}

class _HomeAppBarState extends State<HomeAppBar> {
  _HomeAppBarState(this.pressedMenu);

  final Function pressedMenu;

  bool _showCloseButton = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(8)),
      child: Row(
        children: <Widget>[
          SizedBox(width: getProportionateScreenWidth(5)),
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
                  onTap: () {
                    pressedMenu.call();
                    setState(() {
                      _showCloseButton = !_showCloseButton;
                    });
                  },
                  child: SvgPicture.asset(
                    !_showCloseButton
                        ? "assets/svgs/menu.svg"
                        : "assets/svgs/icon-multiple-purple.svg",
                    width: getProportionateScreenWidth(
                      !_showCloseButton ? 30 : 22,
                    ),
                    height: getProportionateScreenHeight(
                      !_showCloseButton ? 30 : 22,
                    ),
                  ),
                ),
              ),
              alignment: Alignment.centerRight,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(30))
        ],
      ),
    );
  }
}
