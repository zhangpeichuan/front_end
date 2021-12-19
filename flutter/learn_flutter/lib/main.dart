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
        title: Text('基础Widget'),
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

    return StackDemo();
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      /*
        * Stack默认包裹内容
        *-alignment:从什么位置开始布局子Widget
        * fit：expend将子元素拉伸
        * Positioned包裹
        * OverFlow,是否显示超出部分
        * */
      alignment: AlignmentDirectional.bottomEnd,
      // overflow: Overflow.visible,
      // fit: StackFit.expand,
      children: <Widget>[
        Image.asset('assets/images/architecture.png'),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: Color.fromARGB(150, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("HelloWorld!不错",style: TextStyle(color: Colors.white,fontSize: 20),),
                GestureDetector(child: Icon(Icons.favorite,color: Colors.white,),onTap: (){print('onDoubleTap');},),
              ],

            ),
        ),),

      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Flexible  flex
            /* expanded -> flexible(fit:FlexFit.tight)
            * 空间分配问题
            *
            * */
            Expanded(
                flex: 1,
                child: Container(width: 50,height: 60,color: Colors.blue,)),
            Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Container(width: 100,height: 60,color: Colors.red,)),
            Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Container(width: 100,height: 100,color: Colors.green,),),
            Container(width: 90,height: 80,color: Colors.blue,),
            Container(width: 70,height: 120,color: Colors.orange,),
          ]
      ),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(width: 80,height: 60,color: Colors.red,child: Text('Hellox',style: TextStyle(fontSize: 10),),),
            Container(width: 120,height: 100,color: Colors.green,child: Text('Worldx',style: TextStyle(fontSize: 20),)),
            Container(width: 90,height: 80,color: Colors.blue,child: Text('abcx',style: TextStyle(fontSize: 25),)),
            Container(width: 70,height: 120,color: Colors.orange,child: Text('cbx',style: TextStyle(fontSize: 40),)),
      ]),
    );
  }
}
//Row、Column继承Flex
/*Row水平方向尽可能占据比较大的空间
    * Axis.horizontal = Row
    * Axis.vertical = Column
    * 直接使用Row或者Column
    * */
class ButtonRowDemo extends StatelessWidget {
  const ButtonRowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      onPressed: (){},
      child:Row(
        mainAxisSize: MainAxisSize.min,
        children: [
                Icon(Icons.settings),
                Text('data'),
      ],),
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RowContainerDemo();
  }
}
/*
    *
    *TextDirction与Row起效果
    * VerticalDirection与Column起效果
    *baseLine:基线对其,必须有基线才能有效果,文字排版
    *stretch陷入让row占据尽可能大的空间，将所有子元素的交叉轴的高度拉伸最大
    * */
class RowContainerDemo extends StatelessWidget {
  const RowContainerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(//限制拉伸最大高度
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.alphabetic,

        children: [
          Container(width: 80,height: 60,color: Colors.red,child: Text('Hellox',style: TextStyle(fontSize: 10),),),
          Container(width: 120,height: 100,color: Colors.green,child: Text('Worldx',style: TextStyle(fontSize: 20),)),
          Container(width: 90,height: 80,color: Colors.blue,child: Text('abcx',style: TextStyle(fontSize: 25),)),
          Container(width: 70,height: 120,color: Colors.orange,child: Text('cbx',style: TextStyle(fontSize: 40),)),
        ],
      ),
    );
  }
}
