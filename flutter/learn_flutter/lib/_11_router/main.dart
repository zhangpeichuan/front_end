import 'dart:core';
import 'package:flutter/material.dart';
import 'detail.dart';
import 'about.dart';
main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (settings){
        if (settings.name == HYDetailPage.routeName){
          return MaterialPageRoute(builder: (ctx){
            return HYDetailPage(message: settings.arguments as String,);
          });
        }
      },
      routes: {
        HYHomePage.routeName:(ctx)=>HYHomePage(),
        HYAboutPage.routeName:(ctx)=>HYAboutPage(),
        // HYDetailPage.routeName:(ctx)=>HYDetailPage(),

      },
    );
  }
}
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);
  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础Widget'),
      ),
      body: HYHomeContent(),

 );
  }
}
class HYHomeContent extends StatefulWidget {
  HYHomeContent({Key? key}) : super(key: key);
  String _backString = '';
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    // MaterialPageRoute
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: ()=>_jumpToDetail(context),
            child: Text('跳转详情'),),
          ElevatedButton(
            onPressed: ()=>_jumpToAbout(context),
            child: Text('跳转关于'),),
          Text('HYHomePage${widget._backString}'),

        ],
      ),
    );
  }
  void _jumpToDetail(BuildContext context){
    //对象方法
    Future result = Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
      return HYDetailPage(message: 'fromHome',);
    }));
        //实例方法
    // Navigator.push(context, route);

    result.then((value){
      setState(() {
        widget._backString = value;
      });
    });
  }
  void _jumpToAbout(BuildContext context){
    Future result = Navigator.of(context).pushNamed(HYAboutPage.routeName,arguments: 'fromHome');
    result.then((value){
      setState(() {
        widget._backString = value;
      });
    });
  }
  void _jumpToDetail2(BuildContext context){
    //对象方法
    Future result = Navigator.of(context).pushNamed(HYDetailPage.routeName,arguments: 'a home detail 2');
    result.then((value){
      setState(() {
        widget._backString = value;
      });
    });
  }
}
