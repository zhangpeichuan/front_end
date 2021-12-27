import 'package:flutter/material.dart';
import '../../../core/model/category_model.dart';
import '../meal/meal.dart';
class HYHomeCategoryItem extends StatelessWidget {
  const HYHomeCategoryItem({Key? key, required this.category}) : super(key: key);
  final HYCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: category.cColor,
          borderRadius: BorderRadius.circular(10),
          gradient:LinearGradient(colors: [category.cColor.withOpacity(.7),category.cColor]),
        ),
        alignment: Alignment.center,
        child: Text(category.title,style: Theme.of(context).textTheme.headline2,),
      ),
      onTap: ()=>Navigator.of(context).pushNamed(HYMealScreen.routeName,arguments: category),
    );
  }
}
