import 'package:flutter/material.dart';

import '../../../core/model/category_model.dart';

import 'meal_content.dart';
class HYMealScreen extends StatelessWidget {
  static const String routeName = '/meal';

  const HYMealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as HYCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: const HYMealContent(),
    );
  }
}
