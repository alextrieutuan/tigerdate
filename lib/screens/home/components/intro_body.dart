import 'package:flutter/material.dart';
import 'package:tigerdate/screens/home/components/intro_text_widgets.dart';
import 'package:tigerdate/utils/size_config.dart';

class Intro extends StatelessWidget {
  const Intro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(60)),
            Column(
              children: [
                HeaderText(stringKey: 'home_screen_intro_1_header'),
                SizedBox(height: getProportionateScreenHeight(60)),
                TitleText(stringKey: 'home_screen_intro_1_title'),
                SizedBox(height: getProportionateScreenHeight(20)),
                DescriptionText(stringKey: 'home_screen_intro_1_description'),
                SizedBox(height: getProportionateScreenHeight(100)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
