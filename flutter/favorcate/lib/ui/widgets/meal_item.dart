import 'package:flutter/material.dart';

import 'package:favorcate/core/model/meal_model.dart';

class HYMealItem extends StatelessWidget {
  const HYMealItem({Key? key, required this.viewModel}) : super(key: key);
  final HYMealModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        child:Column(
          children: [
            Image.network(viewModel.imageUrl),
            Row(
              children: [
                Text(viewModel.title),
                Text(viewModel.title),
                Text(viewModel.title),
              ],
            )
          ],
        )
    );
  }
}
