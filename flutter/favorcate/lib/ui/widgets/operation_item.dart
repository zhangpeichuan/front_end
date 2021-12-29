import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/ui/shared/size_fix.dart';
class HYOperationItem extends StatelessWidget {
  Widget _icon;
  String title;
  Color? textColor;
  HYOperationItem(this._icon, this.title, {this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.px,
      height: 50.px,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon,
          Text(title,style: TextStyle(color: textColor),),
        ],
      ),
    );
  }
}
