import 'package:flutter/material.dart';

class HYSecondPage extends StatelessWidget {
  const HYSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      //没有完全创建Theme Data，不会覆盖主题
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(secondary: Colors.black),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Theme'),
          ),
          floatingActionButton:
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.pets)),
          body: Center(
              child: Column(
            children: [Text('HelloWorld!'), Text('HelloWorld!')],
          )),
        ));
  }
}
