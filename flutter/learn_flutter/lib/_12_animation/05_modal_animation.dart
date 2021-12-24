import 'package:flutter/material.dart';
import 'modal_page.dart';
main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础Widget'),
      ),
      body: Text('HelloWorld!'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pool),
        onPressed: (){
          //iOS Modal方式
          // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>HYModalPage(),
          // fullscreenDialog: true),);
          Navigator.of(context).push(PageRouteBuilder(
              transitionDuration:Duration(seconds: 1),
              pageBuilder:(ctx,animation1,animation2){
                return FadeTransition(
                    opacity: animation1,
                    child: HYModalPage());
              }));
        },
      ),
    );
  }
}