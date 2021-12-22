import 'dart:core';
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/utils/log.dart';

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
  HYHomePage({Key? key}) : super(key: key);
  final GlobalKey<_HYHomeContentState> homeKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础Widget'),
      ),
      body: HYHomeContent(key: homeKey,),
      floatingActionButton:
      FloatingActionButton(onPressed: (){
        print(homeKey.currentState!.message);
        print(homeKey.currentState!.widget.name);
        homeKey.currentState?.test();
      },child: Icon(Icons.add),),
    );
  }
}
class HYHomeContent extends StatefulWidget {
  final String name = "zhangpc";
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  final String message = '123';
  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
  test(){
    HYLog('test', StackTrace.current);
  }
}