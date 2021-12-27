import 'package:flutter/material.dart';

class AppTheme{
  //1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;
  //2.普通模式
  static const Color normalColor = Colors.red;

  // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.red,
      textTheme: TextTheme(
        bodyText2: TextStyle(fontSize: bodyFontSize),
        headline4: TextStyle(fontSize: smallFontSize, ),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize, color: Colors.black),
      ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.orange),

  );
  // 3.暗黑主题
  static const Color darkColor = Colors.green;
  static final ThemeData darkTheme = ThemeData(
      primaryColor: Colors.grey,
      textTheme: TextTheme(
        bodyText2: TextStyle(fontSize: bodyFontSize),
        headline4: TextStyle(fontSize: smallFontSize, ),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize, color: Colors.black),
      ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(secondary: Colors.white),

  );
}