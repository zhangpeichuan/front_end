import 'package:flutter/material.dart';
import 'home_content.dart';
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: HYHomeContent(),
    );
  }
}
