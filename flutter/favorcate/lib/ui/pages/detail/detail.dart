import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';

import 'detail_content.dart';
import 'detail_floating_button.dart';
class HYDetailSceen extends StatelessWidget {
  const HYDetailSceen({Key? key}) : super(key: key);
  static const String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final _meal = ModalRoute.of(context)?.settings.arguments as HYMealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
      ),
      body: HYDetailContent(meal: _meal,),
      floatingActionButton: HYDetailFloatingButton(meal: _meal,),
    );
  }
}
