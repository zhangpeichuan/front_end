import 'dart:core';
import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
main() => runApp(MyApp());
//1、创建全局唯一的EventBus
final eventBus = EventBus();
class UserInfo{
  String nickNmae;
  int level;

  @override
  String toString() {
    return 'UserInfo{nickNmae: $nickNmae, level: $level}';
  }

  UserInfo(this.nickNmae, this.level);
}
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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HYHomeButton(),
          SizedBox(height: 50,),
          HYHomeText(),
        ],
      ),
    );
  }
}
class HYHomeButton extends StatelessWidget {
  const HYHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      //2、发出事件
      final info = UserInfo('张三', 1);
      eventBus.fire(info);
    },child: Text('hello'),);
  }
}
class HYHomeText extends StatefulWidget {
  const HYHomeText({Key? key}) : super(key: key);

  @override
  _HYHomeTextState createState() => _HYHomeTextState();
}

class _HYHomeTextState extends State<HYHomeText> {
  String _message = 'HelloWorld';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventBus.on<UserInfo>().listen((user) {
      print(user);
      setState(() {
        _message = user.nickNmae;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text('$_message',style: TextStyle(fontSize: 20),);
  }
}
