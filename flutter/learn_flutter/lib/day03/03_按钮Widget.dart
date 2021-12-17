
import 'package:flutter/cupertino.dart';
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
      floatingActionButton: FloatingActionButton(onPressed: ()=>print('FloatingActionButton onPressed'),
        child: Icon(Icons.home),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
    return ButtonDemo();
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //1、RaiseButton ElevatedButton替代
        RaisedButton(
          onPressed: ()=>print('RaisedButton onPressed'),
          child: Text('RaisedButton',style: TextStyle(color: Colors.white),),color: Colors.lightBlue,),
        // 2、 FlatButton TextButton 替代
        FlatButton(onPressed: ()=>print('FlatButton onPressed'),
            child: Text('FlatButton',style: TextStyle(color: Colors.white),),color: Colors.lightBlue, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        // 3、OutlinedButton
        OutlinedButton(onPressed: ()=>print('OutlinedButton onPressed'),
          child: Text('FlatButton',style: TextStyle(color: Colors.lightBlue),),),
        // 4、FloatingActionButton
        FloatingActionButton(onPressed: ()=>print('FloatingActionButton onPressed'),
          child: Icon(Icons.settings),),
        // 5、自定义Button 图标+文字+背景+圆角
        TextButton(onPressed: ()=>print('TextButton onPressed'),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.favorite),
              Text('TextButton'),
            ],
          ),

        )
      ],
    );
  }
}


