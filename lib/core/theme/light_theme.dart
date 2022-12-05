import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static LightTheme? _instance;
  static LightTheme get instance {
    _instance ??= LightTheme._();
    return _instance!;
  }

  LightTheme._();

  ThemeData theme = FlexThemeData.light(
    appBarBackground: const Color(0xFFFFFFFF),
    subThemesData: const FlexSubThemesData(
      blendOnColors: false,
       textButtonRadius: 0.0,
    elevatedButtonRadius: 0.0,
    outlinedButtonRadius: 0.0,
      inputDecoratorSchemeColor: SchemeColor.onTertiaryContainer,
      inputDecoratorIsFilled: false,
      inputDecoratorBorderType: FlexInputBorderType.outline,
     inputDecoratorRadius: 10.0,
      
      inputDecoratorBorderWidth: 0.5,
      inputDecoratorUnfocusedHasBorder: true,
      cardRadius: 0.0,
    ),
    scaffoldBackground: const Color(0xffF6F8F9),
    colors: const FlexSchemeColor(
      primary: Color(0xffdc5d5a),
      primaryContainer: Color(0xffd0e4ff),
      secondary: Color(0xff324057),
      secondaryContainer: Color(0xffffdbcf),
      tertiary: Color(0xffb075b2),
      tertiaryContainer: Color(0xff95f0ff),
      appBarColor: Color(0xffffdbcf),
      error: Color(0xffb00020),
    ),
  );
}
