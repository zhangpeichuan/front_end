import 'package:flutter/material.dart';
import 'size_fix.dart';
import 'extension/double_extension.dart';
main() => runApp(MyApp());
//Widget树，组件化开发思想
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    //手机的屏幕大小
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final top = MediaQuery.of(context).padding.top;
    final bottom = MediaQuery.of(context).padding.bottom;

    print('MediaQuery width $width height $height top $top bottom $bottom');

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: HYContent(),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize();
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}
class HYContent extends StatelessWidget {
  const HYContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center ,
          width: 200.0.px,
          height: 200.0.px,
        color: Colors.red,
        child: Text('hello World!',style: TextStyle(fontSize: 20),),),
    );
  }
}
