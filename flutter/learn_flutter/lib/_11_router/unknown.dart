import 'package:flutter/material.dart';
class HYUnknownPage extends StatelessWidget {
  const HYUnknownPage({Key? key}) : super(key: key);
  static const String routeName = "unkown";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('错误页面'),
      ),
      body: Center(
        child: Text('错误页面',style: TextStyle(fontSize: 20,color: Colors.red),),
      ),
    );
  }
}
