import 'package:flutter/material.dart';
class HYSubjectsContent extends StatefulWidget {
  const HYSubjectsContent({Key? key}) : super(key: key);

  @override
  _HYSubjectsContentState createState() => _HYSubjectsContentState();
}

class _HYSubjectsContentState extends State<HYSubjectsContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('subjects内容',style: TextStyle(fontSize: 20,color: Colors.green),),
    );
  }
}
