import 'package:flutter/material.dart';
import 'mall_content.dart';
class HYMallPage extends StatelessWidget {
  const HYMallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商城'),
      ),
      body: HYMallContent(),
    );
  }
}
