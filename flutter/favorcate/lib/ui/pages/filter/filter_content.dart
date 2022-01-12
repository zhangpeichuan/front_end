import 'package:favorcate/core/extension/int_extension.dart';
import 'package:flutter/material.dart';

class HYFilterContent extends StatelessWidget {
  const HYFilterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.px),
              child: Text("展示您的选择",style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 30.px),),
          ),
          buildChooseSelect(context)
        ],
      ),
    );
  }
  Widget buildChooseSelect(context){
    return Expanded(
        child:ListTile(
          title: Text("无谷蛋白"),
          subtitle: Text("展示无谷蛋白食物"),
          trailing: Switch(value: false, onChanged: (value){}),
        )
    );
  }
}
