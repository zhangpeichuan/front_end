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
class HYHomePage extends StatefulWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget'),
      ),
      body: Center(
        child: HYCountWidget(
          count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HYShowData01(),
              HYShowData02(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            count +=1;
          });
      },),
 );
  }
}
class HYShowData01 extends StatefulWidget {
  const HYShowData01({Key? key}) : super(key: key);
  @override
  State<HYShowData01> createState() => _HYShowData01State();
}

class _HYShowData01State extends State<HYShowData01> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    HYLog('didChangeDependencies', StackTrace.current);
  }
  @override
  Widget build(BuildContext context) {
    int counter = HYCountWidget.of(context)!.counter;
    return Card(
      color: Colors.redAccent,
      child: Text('当前计数$counter',style: TextStyle(fontSize: 30,color: Colors.white),),
    );
  }
}
class HYShowData02 extends StatelessWidget {
  const HYShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = HYCountWidget.of(context)!.counter;

    return Container(
      color: Colors.blue,
      child: Text('当前计数$counter',style: TextStyle(fontSize: 30,color: Colors.white),),
    );
  }
}


class HYCountWidget extends InheritedWidget{
  //1、定义共享数据
  final int counter;
  //2、定义构造方法
  HYCountWidget(this.counter, {Key? key, required Widget child}) : super(key: key, child: child);
  //3.获取组件最近的当前InheritedWidget对象
  static HYCountWidget? of(BuildContext context){
    //沿着Element树，去找到最近的HYCountWidget
    return context.dependOnInheritedWidgetOfExactType();
  }
  //4、决定要不要回调state中的didChangeDependencies方法
  //返回true:执行当前InheritedWidget的state中的didChangeDependencies方法
  @override
  bool updateShouldNotify(HYCountWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.counter != counter;
  }

}