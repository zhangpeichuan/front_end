import 'package:flutter/material.dart';

import 'favor_content.dart';
class HYFavorScreen extends StatelessWidget {
  static final String routeName = '/favor';
  const HYFavorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HYFavorContent();
  }
}
