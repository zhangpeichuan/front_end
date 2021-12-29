import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/ui/shared/size_fix.dart';
import 'package:flutter/material.dart';

class HYDetailContent extends StatelessWidget {
  const HYDetailContent({Key? key, required this.meal}) : super(key: key);
  final HYMealModel meal;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildBannerImage(),
          BuildConentTitle(context, '制作材料'),
          buildMakeMaterial(context),
          BuildConentTitle(context, '制作步骤'),
          BuildMakeSteps(context)
        ],
      ),
    );
  }

  //1.横幅图片
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,
      child: Image.network(meal.imageUrl),
    );
  }

  //2.制作材料
  Widget buildMakeMaterial(BuildContext context) {
    return BuildContentList(
      context: context,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: meal.ingredients.length,
          itemBuilder: (ctx, index) {
            return Card(
              color: Colors.amber,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 5.px, horizontal: 10.px),
                child: Text(
                  meal.ingredients[index],
                ),
              ),
            );
          }),
    );
  }

  // 内容标题公共方法
  Widget BuildConentTitle(BuildContext context, String title) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.px),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(fontWeight: FontWeight.bold),
        ));
  }

  // 内容样式
  Widget BuildContentList({required BuildContext context, required Widget child}) {
    return Container(
        padding: EdgeInsets.all(8.px),
        width: HYSizeFit.screenWidth - 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.px),
        ),
        child: child);
  }

  // 制作步骤
  Widget BuildMakeSteps(BuildContext context) {
    return BuildContentList(
        context: context,
        child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('#${index + 1}'),
                ),
                title: Text(meal.steps[index]),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: meal.steps.length)
    );
  }
}
