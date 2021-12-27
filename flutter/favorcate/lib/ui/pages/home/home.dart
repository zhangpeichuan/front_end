import 'package:flutter/material.dart';

import 'home_content.dart';
class HYHomeScreen extends StatelessWidget {
  static final String routeName = '/home';
  const HYHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HYHomeContent();
  }
}
