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
  HYHomePage(){
    print('1、HomePage调用constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('2、HomePage调用build方法');
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
  final String message;
  HYHomeContent(this.message){
    print('1、HYHomeContent调用constructor');
  }
  @override
  _HYHomeContentState createState(){
    print('2、_HYHomeContent 调用createState');
    return _HYHomeContentState();
  }
}
/**
 *  1、不能放到Widget里面
 * 2、在Flutter的运行过程中，Widget是不断销毁创建的，当状态改变时，并不希望重新创建
 */

//states 是加_状态是只能给Widget使用的
class _HYHomeContentState extends State<HYHomeContent> {
  int _counter = 0;
  _HYHomeContentState(){
    print('3、_HYHomeContentState调用constructor');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('4、_HYHomeContentState调用initState');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('_HYHomeContentState调用dispose');
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print('_HYHomeContentState调用setState');
  }

  @override
  void didUpdateWidget(covariant HYHomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('_HYHomeContentState调用didUpdateWidget');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('_HYHomeContentState调用didChangeDependencies');

  }
  @override
  Widget build(BuildContext context) {
    print('5、_HYHomeContentState调用build');
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
