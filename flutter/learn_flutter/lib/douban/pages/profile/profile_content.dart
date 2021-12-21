import 'package:flutter/material.dart';
class HYProfileContent extends StatefulWidget {
  const HYProfileContent({Key? key}) : super(key: key);

  @override
  _HYProfileContentState createState() => _HYProfileContentState();
}

class _HYProfileContentState extends State<HYProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('profile内容',style: TextStyle(fontSize: 20,color: Colors.green),),
    );
  }
}
