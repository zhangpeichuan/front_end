import 'package:flutter/material.dart';

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
        title: Text('加减法'),
      ),
      body: HYHomeContent('你好message'),
    );
  }
}
//Widget是不能加_,暴露给别用用的
class HYHomeContent extends StatefulWidget {
  const HYHomeContent(this.message,{Key? key}) : super(key: key);
  final String message;
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}
/**
 *  1、不能放到Widget里面
 * 2、在Flutter的运行过程中，Widget是不断销毁创建的，当状态改变时，并不希望重新创建
 */

//states 是加_状态是只能给Widget使用的
class _HYHomeContentState extends State<HYHomeContent> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text('当前计数$_counter'),
          Text('传递参数${this.widget.message}')
        ],
      ),
    );
  }
  Widget _getButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        ElevatedButton(
          onPressed: (){
            _counter++;
            setState(() {

            });
          },
          child: Text('+',style: TextStyle(fontSize: 20),),
        ),
        ElevatedButton(
          onPressed: (){
            _counter--;
            setState(() {
            });
          },
          child: Text('-',style: TextStyle(fontSize: 24)),
        ),],
    );
  }
}
