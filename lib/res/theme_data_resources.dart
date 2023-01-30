import 'package:flutter/material.dart';

import 'color_resources.dart';

///ThemeData详解   https://blog.csdn.net/btfireknight/article/details/108255360
///https://juejin.cn/post/6844903937972109325
class ThemeDataResources {
  static ThemeData defaultThemeData = ThemeData(
    // 1.亮度
    brightness: Brightness.light,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorResources.accentColor,
      selectionColor: ColorResources.accentColor,
      selectionHandleColor: ColorResources.accentColor,
    ),
    // 文本框中光标的颜色，如TextField
    // 4.colorScheme: 拥有13种颜色，可用于配置大多数组件的颜色。
    colorScheme: const ColorScheme(
      primary: ColorResources.primaryColor,
      surface: ColorResources.primaryColor,
      secondary: ColorResources.primaryColor,
      primaryContainer: ColorResources.primaryColor,
      secondaryContainer: ColorResources.primaryColor,
      background: ColorResources.accentColor,
      error: ColorResources.errorColor,
      onPrimary: ColorResources.textBlack,
      onSecondary: ColorResources.accentColor,
      onSurface: ColorResources.accentColor,
      onBackground: ColorResources.accentColor,
      onError: ColorResources.accentColor,
      brightness: Brightness.light,
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent
  );
}
