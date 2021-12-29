import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';

class HYFavorContent extends StatelessWidget {
  const HYFavorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
        builder: (context,favorVM,child) {
          final meals = favorVM.favorMeals;
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
