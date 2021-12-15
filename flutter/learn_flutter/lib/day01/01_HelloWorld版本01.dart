import 'package:flutter/material.dart';

main() {
  //1.runApp函数,引入material
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('第一个Flutter程序'),
          ),
          body: Center(
            child: Text(
              'hello World!',
              textDirection:TextDirection.rtl,
              style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
              ),
            ),
          ),
        ),
      )
  );
}
