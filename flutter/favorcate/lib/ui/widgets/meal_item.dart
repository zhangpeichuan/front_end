import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import 'package:provider/provider.dart';
import 'operation_item.dart';
class HYMealItem extends StatelessWidget {
  const HYMealItem({Key? key, required this.meal}) : super(key: key);
  final HYMealModel meal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
          child:Column(
            children: [
              buildMealInfo(context),
              buildOperation(context),
            ],
          )
      ),
      onTap: ()=>Navigator.of(context).pushNamed(HYDetailSceen.routeName,arguments:meal),
    );
  }
  Widget buildMealInfo(BuildContext context){
    print(meal.imageUrl);
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.network(meal.imageUrl,width: double.infinity,height: 260,fit:BoxFit.cover ,),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Text(meal.title,style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),)),
        )
      ],
    );
  }
  Widget buildOperation(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HYOperationItem(Icon(Icons.schedule), '时间'),
          HYOperationItem(Icon(Icons.restaurant), '难度'),
          builderFavor(context),
        ],
      ),
    );
  }
  Widget builderFavor(BuildContext context){
    return Consumer<HYFavorViewModel>(
      builder: (ctx,favorVM,child){
        //1、判断是否是收藏状态
        final isFavor = favorVM.isFavor(meal);
        final iconData = isFavor ? Icons.favorite:Icons.favorite_border;
        final iconColor = isFavor ? Theme.of(context).primaryColor:Colors.grey;
        final iconNote = isFavor ? "已收藏":"未收藏";
        return GestureDetector(
            child: HYOperationItem(Icon(iconData,color: iconColor,), iconNote),
          onTap: ()=>favorVM.handleMeal(meal),
        );
      },
    );
  }
}
