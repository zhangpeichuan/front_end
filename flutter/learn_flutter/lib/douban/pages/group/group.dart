import 'package:flutter/material.dart';
import 'group_content.dart';
class HYGroupPage extends StatelessWidget {
  const HYGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('group'),
      ),
      body: HYGroupContent(),
    );
  }
}
