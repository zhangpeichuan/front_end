import 'package:flutter/material.dart';

import 'unknown_content.dart';
class HYUnkownScreen extends StatelessWidget {
  static const String routeName = '/unknow';
  const HYUnkownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('未知错误'),
    ),
    body: HYUnknownContent(),
    );
  }
}
