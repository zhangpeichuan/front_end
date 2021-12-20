import 'dart:core';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomeContent(),
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
      body: HYHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          print('floatingActionButton onPressed');
        },
      ),
 );
  }
}
class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  ScrollController _controller = ScrollController(initialScrollOffset: 200);
  bool _isShowFlatingButton = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // _controller.addListener(() {
    //   print('监听到滚动${_controller.offset}');
    //   setState(() {
    //     _isShowFlatingButton = _controller.offset >=500;
    //   });
    // });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
  /**
   * 两种方式监听
   * controller
   * 1、可以设置默认值
   * 2、可以监听，也可以监听滚动的位置
   * 3、不能监听开始滚动、结束滚动
   * NotifcationListener
   * 1、监听开始滚动和结束滚动
   **/
    return Scaffold(
      appBar: AppBar(
        title: Text('基础Widget'),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification){
          if (notification is ScrollStartNotification) {
            print('开始滚动 ${notification.metrics.pixels}');
          }else if (notification is ScrollEndNotification){
            print('结束滚动 ${notification.metrics.pixels} ${notification.metrics.maxScrollExtent}');
          }else if (notification is ScrollUpdateNotification){
            print('更新滚动 ${notification.metrics.maxScrollExtent}');
          }
          return true;
        },
        child: ListView.builder(
          controller: _controller,
          itemCount: 100,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
              leading: Icon(Icons.people),
              title: Text('联系人${index}'), );
          },),
      ),
      floatingActionButton: _isShowFlatingButton ? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          print('floatingActionButton onPressed');
          _controller.animateTo(0, duration: Duration(seconds:1), curve: Curves.easeIn);
        },
      ): null,
    );
  }
}