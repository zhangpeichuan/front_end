import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HYDetailFloatingButton extends StatelessWidget {
  const HYDetailFloatingButton({Key? key, required this.meal}) : super(key: key);
  final HYMealModel meal;

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
      builder:(ctx,favorVM,child){
        //1、判断是否是收藏状态
        final iconData = favorVM.isFavor(meal) ? Icons.favorite:Icons.favorite_border;
        final iconColor = favorVM.isFavor(meal) ? Theme.of(context).primaryColor:Colors.orange;
        return FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: ()=>favorVM.handleMeal(meal),
          child: Icon(iconData,color: iconColor,),);
      }

    );
  }
}
