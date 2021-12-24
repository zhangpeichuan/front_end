import 'dart:core';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PointAndGesture'),
      ),
      body: HYHomeContent(),
    );
  }
}

class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTapDown: (tapDownDetails) => print('Outer onTapDown'),
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          IgnorePointer(//阻止冒泡
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              excludeFromSemantics:true,//阻止事件传递
              onTapDown: (tapDownDetails) => print('inner onTapDown'),
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                  child: Text('HelloWorld!')),
            ),
          ),
        ],
      ),
    );
  }
}
