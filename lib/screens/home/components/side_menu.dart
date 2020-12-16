import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tigerdate/styles/colors.dart';
import 'package:tigerdate/utils/size_config.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(getProportionateScreenWidth(16)),
          child: Column(
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(8)),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/svgs/icon_globe_purple.svg"),
                    SizedBox(width: getProportionateScreenWidth(5)),
                    Text(
                      'English',
                      style: TextStyle(
                        color: colorPurpleHeart,
                        fontSize: getProportionateFontSize(16),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset(
                            "assets/svgs/icon-arrow-right-purple.svg"),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              buildMenuItem(menuName: 'FAQ', onPressed: () {}),
              Divider(),
              buildMenuItem(menuName: 'Imprint', onPressed: () {}),
              Divider(),
              buildMenuItem(menuName: 'Term & Conditions', onPressed: () {}),
              Divider(),
              buildMenuItem(menuName: 'Privacy Policy', onPressed: () {}),
              Divider(),
              SizedBox(height: getProportionateScreenHeight(150)),
              buildSignUpButton(onClicked: () {
                log('Goto Sign Up Screen');
              }),
              SizedBox(height: getProportionateScreenHeight(16)),
              buildSignInButton(onClicked: () {
                log('Goto Sign In Screen');
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSignInButton({Function onClicked}) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: colorPurpleHeart),
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(5),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(16),
          ),
          child: Center(
            child: Text(
              'Log In',
              style: TextStyle(color: colorPurpleHeart),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignUpButton({Function onClicked}) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorPurpleHeart,
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(5),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(16),
          ),
          child: Center(
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({String menuName, Function onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(8)),
        child: Row(
          children: <Widget>[
            Text(
              menuName,
              style: TextStyle(
                color: colorPurpleHeart,
                fontSize: getProportionateFontSize(16),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child:
                    SvgPicture.asset("assets/svgs/icon-arrow-right-purple.svg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
