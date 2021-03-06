import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
class HYMealContent extends StatelessWidget {
  const HYMealContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as HYCategoryModel;
    return Consumer<HYMealViewModel>(
        builder: (context,mealVM,child) {
          final meals = mealVM.meals.where((element) => element.categories.contains(category.id)).toList();
          return ListView.builder(
            itemCount:meals.length ,
              itemBuilder: (ctx,index){
                return HYMealItem(meal: meals[index]);
              }
          );
        }
    );
  }
}
