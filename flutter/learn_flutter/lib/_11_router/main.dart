import 'dart:core';
import 'package:flutter/material.dart';
import 'detail.dart';
import 'unknown.dart';
import 'router/router.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: HYRouter.initialRoute,
        onUnknownRoute: HYRouter.unknownRoute,
    onGenerateRoute: HYRouter.generateRoute,
    routes: HYRouter.routes,
    );
  }
}
