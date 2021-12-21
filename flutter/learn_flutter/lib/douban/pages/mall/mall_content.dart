import 'package:flutter/material.dart';
class HYMallContent extends StatefulWidget {
  const HYMallContent({Key? key}) : super(key: key);

  @override
  _HYMallContentState createState() => _HYMallContentState();
}

class _HYMallContentState extends State<HYMallContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('mall内容',style: TextStyle(fontSize: 20,color: Colors.green),),
    );
  }
}
