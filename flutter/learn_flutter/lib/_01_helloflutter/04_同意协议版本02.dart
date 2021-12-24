import 'package:flutter/material.dart';

main() => runApp(MyApp());
//Widget树，组件化开发思想
class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个Flutter程序'),
      ),
      body: HYContentBody(),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}
class HYContent extends StatelessWidget {
  const HYContent({Key? key}) : super(key: key);
  final flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: flag, onChanged: (value){
            // flag = !flag;
          }),
          Text('同意协议',style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
//flag状态
// statefulbu
class HYContentBody extends StatefulWidget {
  const HYContentBody({Key? key}) : super(key: key);

  @override
  _HYContentBodyState createState() => _HYContentBodyState();
}

class _HYContentBodyState extends State<HYContentBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: flag, onChanged: (value){
            setState(() {
              flag = value!;
            });
            print(value);
          },
          ),
          Text('同意协议'),
        ],
      ),
    );
  }
}

