import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tigerdate/common/utils/gradien_color.dart';
import 'package:tigerdate/common/utils/size_config.dart';
import 'package:tigerdate/common/widgets/linear_gradient_mask.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<HomeScreen> {
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
                    colors: [Color(0xffDA44bb), Color(0xff8921aa)],
                    child: SvgPicture.asset(
                      "assets/svgs/tiger_date_logo.svg",
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: LinearGradientMask(
                        colors: [Color(0xffDA44bb), Color(0xff8921aa)],
                        child: SvgPicture.asset("assets/svgs/menu.svg"),
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
                            "Cuộc hẹn của\nbạn\nƯu tiên của\nchúng tôi",
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
                            "Tìm kiếm đối phương nhanh hơn bao giờ hết",
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
                            "Với mục tiêu hướng tới những buổi gặp gỡ thật sự, Tiger date sẽ đáp ứng các mong muốn và dự định của cả 2 bên về một cuộc hẹn hò thú vị",
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
