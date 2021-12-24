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
  final usernameTextEditController = TextEditingController();
  final passwdTextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // alignment: Alignment(0,0),
      padding: EdgeInsets.all(10),//内边距
      margin: EdgeInsets.all(10),//外边距
      // transform: Matrix4.rotationZ(50),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
              width: 10,
              color: Colors.purple
          ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.blue,offset: Offset(10,10),spreadRadius: 5,blurRadius: 10, ),
            BoxShadow(color: Colors.orange,offset: Offset(10,-10),spreadRadius: 5,blurRadius: 10, ),
            BoxShadow(color: Colors.green,offset: Offset(-10,-10),spreadRadius: 5,blurRadius: 10, ),
            BoxShadow(color: Colors.pink,offset: Offset(-10,10),spreadRadius: 5,blurRadius: 10, ),
          ]
      ),
      // child: Icon(Icons.pets,size: 50,color: Colors.white,),
      child: Text('Icons.pets,size: 50,color: Colors.white,'),

    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              bottom: 10
          ),
          child: Text('hello world flutter',style: TextStyle(fontSize: 30,color: Colors.white,backgroundColor: Colors.red),),
        ),
        Text('你好 呵呵',style: TextStyle(fontSize: 30,color: Colors.white,backgroundColor: Colors.red),),
        SizedBox(height: 10,),
        Text('不错 hellWorld',style: TextStyle(fontSize: 30,color: Colors.white,backgroundColor: Colors.red),),

      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 200,
      height: 200,
      child: Align(
        alignment: Alignment.topCenter,
        widthFactor: 10,
        heightFactor: 10,
        // alignment: Alignment(1,1),
        child: Icon(Icons.pets,size: 50,),
      ),
    );
  }
}


