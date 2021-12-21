import 'package:flutter/material.dart';
class HYDashedLine extends StatelessWidget {
  final Axis axis;
  final double dashWidth;
  final double dashHeight;
  final int count;
  final Color color;
  const HYDashedLine({
    this.axis = Axis.horizontal,
    this.dashWidth = 1,
    this.dashHeight = 1,
    this.count = 10,
    this.color = const Color(0xffbbbbbb),
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (index) =>
          SizedBox(
            width: dashWidth,
            height: dashHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(color:color),),
          ),).toList(),
    );
  }
}