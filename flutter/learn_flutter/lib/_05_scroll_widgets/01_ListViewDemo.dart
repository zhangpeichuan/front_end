import 'dart:core';
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
        title: Text('列表测试'),
      ),
      body: HYHomeContent(),
    );
  }
}
class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {

    return ListViewSeparatedDemo();
  }
}

class ListViewSeparatedDemo extends StatelessWidget {
  const ListViewSeparatedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext ctx,int index) {return Text('Hello World!${index+1}',style: TextStyle(fontSize: 20),); },
      separatorBuilder: (BuildContext ctx,int index)=>Divider(color: Colors.grey,height: 10,indent: 16,endIndent: 20,thickness: 5,),);
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      cacheExtent: 200,
      itemBuilder: (BuildContext ctx,int index) {
        print('itemBuilder');
        return Text('Hello World!${index+1}',style: TextStyle(fontSize: 20),);
      },);
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      itemExtent: 80,
      children: List.generate(100, (index){
        // return Text('HelloWorld! $index',style: TextStyle(fontSize: 20),);
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text('联系人${index+1}'),
          subtitle: Text('联系人电话号码:13525555555'),
        );
      }),
    );
  }
}