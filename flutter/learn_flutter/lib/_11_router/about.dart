import 'package:flutter/material.dart';

class HYAboutPage extends StatelessWidget {
  const HYAboutPage({Key? key}) : super(key: key);
  static const String routeName = "/about";

  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('关于页面'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('HYAboutPage$message'),
          ElevatedButton(
            onPressed: ()=>_backToHome(context),
            child: Text('返回首页'),),
        ]
        ),
      ),
    );
  }
  void _backToHome(BuildContext context) {
    //对象方法
    Navigator.of(context).pop('HYAboutPage 12312312');
  }
}
