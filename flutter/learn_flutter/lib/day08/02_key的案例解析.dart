import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';
import '../douban/utils/log.dart';
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
class HYHomePage extends StatefulWidget {
  HYHomePage({Key? key}) : super(key: key);

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  final List<String> names = ["aaa","bbb","ccc","eee","fff"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Key案例'),
      ),
      body: ListView(
        children: names.map((e) {
          //ValueKey创建一样的key来避免刷新
          //1、决定Element是否刷新
          //2、进行diff刷新的时候判断删除哪一个
          return ListItemFul(e,key: ValueKey(e),);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){setState(() {
          names.removeAt(0);
        });},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListItemLess extends StatelessWidget {
  final String name;
  Color randomColor = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
      Random().nextInt(256), 1);
  ListItemLess(this.name,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: randomColor,
        child: Text(name,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),));
  }
}
class ListItemFul extends StatefulWidget {
  final String name;

  ListItemFul(this.name,{
    Key? key,
  }) : super(key: key);

  @override
  State<ListItemFul> createState() => _ListItemFulState();
}

class _ListItemFulState extends State<ListItemFul> {
  Color randomColor = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
      Random().nextInt(256), 1);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HYLog('{$widget.key}', StackTrace.current);

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: randomColor,
        child: Text(widget.name,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),));
  }
}