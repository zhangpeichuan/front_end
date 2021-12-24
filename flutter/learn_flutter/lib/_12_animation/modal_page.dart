import 'package:flutter/material.dart';
class HYModalPage extends StatelessWidget {
  const HYModalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('HYModalPage'),
      ),
      body: Center(
        child: Text('HYModalPage'),
      ),
    );
  }
}
