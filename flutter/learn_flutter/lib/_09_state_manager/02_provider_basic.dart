import 'dart:core';
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/utils/log.dart';
import 'package:provider/provider.dart';
import 'viewModel/counter_view_model.dart';
/*
* 1、创建自己需要共享的数据
* 2、在应用程序的顶层ChangeNotifierProvider
* 3、在其他位置使用共享数据
* > Provider.of ：当Provider中的数据发生改变时，Provider.of所在的Widget整个Builder方法将被重建
* > Consumer(相对推荐)：当Provider中的数据发生改变时，只会重新执行Consumer的builder方法
* > Selector 用法 1、 对原有的数据HYCounterModel进行转换 2、shouldRebuild作用(需不需要重新构建)
* >
* */
main() => runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {  return HYCounterViewModel();},
      child: MyApp(),));
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
        title: Text('基础Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HYShowData01(),
            HYShowData02(),
          ],
        ),
      ),
      floatingActionButton: SelectorDemo(),
    );
  }
}

class SelectorDemo extends StatelessWidget {
  const SelectorDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<HYCounterViewModel,HYCounterViewModel>(
      selector: (ctx,counterVM) => counterVM,
      shouldRebuild: (previous,next) => false,
      builder: (ctx,counterVM,child){
        HYLog('floatingActionButton build', StackTrace.current);
        return FloatingActionButton(
          // child: Icon(Icons.add),优化1
          child: child,
          onPressed: (){
            counterVM.counter += 1;
          },);
      },child: Icon(Icons.add),

    );
  }
}

class ConsumerDemo extends StatelessWidget {
  const ConsumerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HYCounterViewModel>(
      builder: (ctx,counterVM,child){
        HYLog('floatingActionButton build', StackTrace.current);
        return FloatingActionButton(
          // child: Icon(Icons.add),优化1
          child: child,
          onPressed: (){
            counterVM.counter += 1;
          },);
      },child: Icon(Icons.add),

    );
  }
}

class HYShowData01 extends StatelessWidget {
  const HYShowData01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HYLog('HYShowData01 build', StackTrace.current);
    int counter = Provider.of<HYCounterViewModel>(context).counter;
    return Container(
      color: Colors.red,
      child: Text('当前计数$counter',style: TextStyle(fontSize: 30,color: Colors.white),),
    );
  }
}
class HYShowData02 extends StatelessWidget {
  const HYShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HYLog('HYShowData02 build', StackTrace.current);
    return
      Container(
        color: Colors.blue,
        child: Consumer<HYCounterViewModel>(builder: (ctx,counterVM,childer){
          HYLog('HYShowData02 Consumer build', StackTrace.current);
          int counter = counterVM.counter;
          return Text('当前计数$counter',style: TextStyle(fontSize: 30,color: Colors.white),);
        }),
      );
  }
}