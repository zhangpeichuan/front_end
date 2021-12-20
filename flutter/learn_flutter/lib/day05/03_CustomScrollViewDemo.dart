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
      // appBar: AppBar(
      //   title: Text('Sliver Demo'),
      // ),
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

    return CustomScrollViewDemo2();
  }
}

class CustomScrollViewDemo2 extends StatelessWidget {
  const CustomScrollViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(title: Text('hello World'),background: Image.asset('assets/images/nav_bg.png',fit: BoxFit.cover,),),
        pinned: true,
        // title: Text('Sliver Demo'),
      ),
      SliverGrid(delegate: SliverChildBuilderDelegate(
            (context, index){ return Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),);
        },
        childCount: 5,
      ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 2,
      )),
      SliverList(delegate: SliverChildBuilderDelegate((context, index){
        return ListTile(
          leading: Icon(Icons.people),
          title: Text('联系人${index}'),
        );
      },childCount: 20))
    ],
    );
  }
}

class CustomScrollViewDemo extends StatelessWidget {
  const CustomScrollViewDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers:<Widget>[
          //safeArea
          //SliverSafeArea
          //SliverPadding
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (context, index){ return Container(color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),);
                  },
                  childCount: 30,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.8,
                ),
              ),
            ),
          ),
        ]
    );
  }
}