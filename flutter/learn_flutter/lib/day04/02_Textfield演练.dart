import 'dart:core';
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
    return TextfieldDemo(usernameTextEditController: usernameTextEditController, passwdTextEditController: passwdTextEditController);
  }
}

class TextfieldDemo extends StatelessWidget {
  const TextfieldDemo({
    Key? key,
    required this.usernameTextEditController,
    required this.passwdTextEditController,
  }) : super(key: key);

  final TextEditingController usernameTextEditController;
  final TextEditingController passwdTextEditController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                labelText: "username",
                icon: Icon(Icons.people),
                border: OutlineInputBorder(),
                hintText: '请输入用户名',
                filled: true,
                fillColor: Colors.red[100]
            ),
            controller: usernameTextEditController,
            onChanged: (string){
              print('onChanged $string');
            },
            onSubmitted: (string){
              print('onSubmitted $string');
            },
          ),
          SizedBox(height: 10,),
          Theme(
            data: ThemeData(
              //继承ColorSwatch运算符[]重载
                primaryColor: Colors.red[100]
            ),
            child: TextField(
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: '请输入密码',
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(),

                ),
                controller: passwdTextEditController,
                obscureText:true
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 44,
            child: FlatButton(onPressed: (){
              final username = usernameTextEditController.text;
              final passwd = passwdTextEditController.text;
              print('账号$username 密码$passwd');
              usernameTextEditController.text = '';
              passwdTextEditController.text = '';

            },
              child: Text('登 录',style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.blue,
            ),
          ),
          OutlinedButton(
            onPressed: (){print('OutlinedButton');},
            child: Text('OutlinedButton'),

          ),
        ],
      ),

    );
  }
}


