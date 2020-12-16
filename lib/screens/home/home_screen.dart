import 'package:flutter/material.dart';
import 'package:tigerdate/screens/home/components/side_menu.dart';

import 'components/intro_body.dart';
import 'components/app_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isShownSideMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HomeAppBar(
              pressedMenu: () {
                setState(() {
                  _isShownSideMenu = !_isShownSideMenu;
                });
              },
            ),
            _isShownSideMenu ? SideMenu() : Intro(),
          ],
        ),
      ),
    );
  }
}
