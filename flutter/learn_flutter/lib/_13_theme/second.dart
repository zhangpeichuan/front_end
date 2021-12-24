import 'package:flutter/material.dart';

class HYSecondPage extends StatelessWidget {
  const HYSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            primaryColor: Colors.greenAccent
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
