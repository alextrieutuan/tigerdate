import 'package:flutter/material.dart';

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({this.child, this.colors});
  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: colors,
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
