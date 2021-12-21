import 'package:flutter/material.dart';
import 'subjects_content.dart';

class HYSubjectsPage extends StatelessWidget {
  const HYSubjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('书影音'),
      ),
      body: HYSubjectsContent(),
    );
  }
}
