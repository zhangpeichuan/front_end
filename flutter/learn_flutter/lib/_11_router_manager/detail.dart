import 'package:flutter/material.dart';
class HYDetailPage extends StatelessWidget {
  static const String routeName = "/detail";

  const HYDetailPage({required this.message,Key? key}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    //更改默认返回,true flutter帮助我们返回
    // false自己调用返回方法
    return WillPopScope(
      onWillPop: (){
        _backToHome(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('HYDetailPage'),
          //修改默认返回按钮
          // leading: IconButton(
          //   icon: Icon(Icons.add),
          //   onPressed: ()=>_backToHome(context),
          // ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('HYDetailPage${message}'),
              ElevatedButton(
                onPressed: ()=>_backToHome(context),
                child: Text('返回首页'),)
            ],
          ),
        ),
      ),
    );
  }
  void _backToHome(BuildContext context) {
    //对象方法
    Navigator.of(context).pop('HYDetailPage $message');
  }
}
