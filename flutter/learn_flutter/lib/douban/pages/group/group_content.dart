import 'package:flutter/material.dart';
class HYGroupContent extends StatefulWidget {
  const HYGroupContent({Key? key}) : super(key: key);

  @override
  _HYGroupContentState createState() => _HYGroupContentState();
}

class _HYGroupContentState extends State<HYGroupContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('group内容',style: TextStyle(fontSize: 20,color: Colors.green),),
    );
  }
}
