import 'package:flutter/material.dart';

class AppTheme{
  //1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;
  static const double xLargeFontSize = 28;
  static const double xxLargeFontSize = 32;

  // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.pink,
    primaryColorLight:Colors.pink,
    primaryColorDark:Colors.pink,
    canvasColor: const Color.fromRGBO(255, 254, 222, 1),
    textTheme: const TextTheme(
        bodyText2: TextStyle(fontSize: bodyFontSize),
        headline4: TextStyle(fontSize: smallFontSize, ),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize, color: Colors.black,fontWeight: FontWeight.w700),
        headline1: TextStyle(fontSize: xLargeFontSize, color: Colors.black,fontWeight: FontWeight.w700),
      ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.orange),

  );
  // 3.暗黑主题
  static const Color darkColor = Colors.green;
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    primaryColorLight:Colors.grey,
    primaryColorDark:Colors.grey,
    canvasColor: const Color.fromRGBO(255, 254, 222, 1),
    textTheme: const TextTheme(
        bodyText2: TextStyle(fontSize: bodyFontSize),
        headline4: TextStyle(fontSize: smallFontSize, ),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize, color: Colors.black,fontWeight: FontWeight.w700),
        headline1: TextStyle(fontSize: xLargeFontSize, color: Colors.black,fontWeight: FontWeight.w700),
      ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(secondary: Colors.white),

  );
}