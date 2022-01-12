import 'package:favorcate/core/extension/int_extension.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
class HYHomeDrawer extends StatelessWidget {
  const HYHomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 250.px,
        child: Column(
          children: [
            buildDrawerTitle(context),
            buildDrawerContent(Icon(Icons.restaurant),"进餐",(){
              Navigator.of(context).pop();
            },context),
            buildDrawerContent(Icon(Icons.settings), "过滤", (){
              Navigator.of(context).pushNamed(HYFilterScreen.routeName);
            }, context),
          ],
        ),
      ),
    );
  }
  Widget buildDrawerTitle(context){
    return Container(
      margin: EdgeInsets.only(bottom: 15.px),
      alignment: const Alignment(0,0.5),
      width: double.infinity,
      height: 120.px,
      color: Colors.red,
      child: Text('开始动手',style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 30.px,color: Colors.white),),
    );
  }
  Widget buildDrawerContent(Widget icon,String title,Function handler,context){
      return ListTile(
        title: Row(
          children: [
            icon,
            SizedBox(width: 20.px,),
            Text(title,style: TextStyle(fontSize: 18.px),),
          ],
        ),
        onTap: ()=>handler(),
      );
  }
}
