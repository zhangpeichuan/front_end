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
  //1、自己写Widge
  //2、某些Widget中会创建RenderObject
  //3、每一个Widget都会创建一个Element对象
  //4、1.commonentElement: mount方法 firstBuild rebuild
  //4、2.RenderObjectElement:mount方法 _widget.createRenderOnject
  //4、3.statefulElement
  //构造方法中_state = widget.createState(){}
  //_state._widget = widget;
  //所有的Widget都会创建一个对应的Element对象
  //StatelessElement
  //StatefullElement
  //组件dget:不会生成RenderObject
  //Container->statelessWidget->widget
  //Container()
  //Text()
  //创建Element:RenderObjectElement
  //渲染Widget:生成RenderObject
  //Padding->SingleChildRenderObjectWidget->RenderObjectWidget
  //Padding->createRenderObject->RenderPadding->RendingBox->RendingObject
  //Padding()
  //RenderObjectWidget()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('源码分析'),
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
    return Text('源码分析');
  }
}