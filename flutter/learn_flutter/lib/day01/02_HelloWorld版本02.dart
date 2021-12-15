import 'package:flutter/material.dart';

main() => runApp(MyApp());
//Widget树，组件化开发思想
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个Flutter程序'),
      ),
      body: HYContent(),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}
class HYContent extends StatelessWidget {
  const HYContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello World!',
        textDirection:TextDirection.rtl,
        style: TextStyle(
          fontSize: 40,
          color: Colors.orange,
        ),
      ),
    );
  }
}
