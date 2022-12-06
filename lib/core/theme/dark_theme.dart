import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  static DarkTheme? _instance;
  static DarkTheme get instance {
    _instance ??= DarkTheme._();
    return _instance!;
  }

  DarkTheme._();

  ThemeData theme = FlexThemeData.dark(
    appBarBackground: const Color(0xFF22282E),
    subThemesData: const FlexSubThemesData(
      inputDecoratorBorderType: FlexInputBorderType.underline,
       outlinedButtonOutlineSchemeColor: SchemeColor.onPrimaryContainer,
      inputDecoratorIsFilled: false,
      textButtonRadius: 0.0,
      elevatedButtonRadius: 0.0,
      outlinedButtonRadius: 0.0,
      inputDecoratorBorderWidth: 0.5,
      inputDecoratorRadius: 10.0,
      inputDecoratorUnfocusedHasBorder: true,
      cardRadius: 0.0,
    ),
    colors: const FlexSchemeColor(
      primary: Color(0xFF9FC9FF),
      primaryContainer: Color(0xff00325b),
      secondary: Color(0xffffb59d),
      secondaryContainer: Color(0xff872100),
      tertiary: Color(0xff86d2e1),
      tertiaryContainer: Color(0xff004e59),
      appBarColor: Color(0xff872100),
      error: Color(0xffcf6679),
    ),
  );
}
