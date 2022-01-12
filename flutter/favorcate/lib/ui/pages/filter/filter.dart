import 'package:flutter/material.dart';

import 'filter_content.dart';
class HYFilterScreen extends StatelessWidget {
  static final String routeName = '/filter';

  const HYFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('过滤'),
      ),
      body: HYFilterContent(),
    );
  }
}
