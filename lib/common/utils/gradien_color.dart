import 'package:flutter/material.dart';

Shader getLinearShaderGradient(List<Color> colors) {
  return LinearGradient(colors: colors)
      .createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
