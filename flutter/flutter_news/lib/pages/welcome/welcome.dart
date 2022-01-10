import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('欢迎页'),
      ),
      body: Text('Hello World!'),
    );
  }
}