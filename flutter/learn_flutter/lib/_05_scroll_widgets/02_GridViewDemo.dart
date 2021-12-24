import 'dart:core';
import 'dart:math';
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
        title: Text('基础Widget'),
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

    return GridViewBuilder();
  }
}

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,),
        itemBuilder: (BuildContext context,int index) => Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),)
    );
  }
}

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(maxCrossAxisExtent: 150,
      children: List.generate(100, (index) => Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),)),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3,
      children: List.generate(100, (index) => Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),)),
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  const GridViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 8),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,),
        children: List.generate(100, (index) => Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),)),
      ),);
  }
}

class GridViewDemo1 extends StatelessWidget {
  const GridViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //水平方向间距
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        children: List.generate(100, (index) => Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),)),
      ),
    );
  }
}