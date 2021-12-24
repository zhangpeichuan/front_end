import 'package:flutter/material.dart';

class AppTheme{
  static const double _titleFontSize = 20;
  // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.pink,
      primaryTextTheme: TextTheme(
          subtitle1: TextStyle(
              color: Colors.yellow,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.red)
      ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.orange),

  );
  // 3.暗黑主题
  static final ThemeData darkTheme = ThemeData(
      primaryColor: Colors.grey,
      primaryTextTheme: TextTheme(
          subtitle1: TextStyle(
              color: Colors.white,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white70)
      ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(secondary: Colors.white),

  );
}