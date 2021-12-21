import 'dart:core';
import 'package:flutter/material.dart';
import 'pages/main/main.dart';
main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '豆瓣APP',
      theme: ThemeData(
        primarySwatch: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: HYMainPage(),
    );
  }
}



