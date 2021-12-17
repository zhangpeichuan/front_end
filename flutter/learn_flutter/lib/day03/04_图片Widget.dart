import 'dart:core';
import 'package:flutter/cupertino.dart';
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
  final String imageUrl = "https://img0.baidu.com/it/u=3564324437,2903688591&fm=26&fmt=auto";
  @override
  Widget build(BuildContext context) {
    return ImageDemo02();
  }
}

class ImageDemo02 extends StatelessWidget {
  const ImageDemo02({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      //加载本地图片 1、 创建本地资源图片 2、pubspec添加配置 3、使用图片资源
        image: AssetImage('assets/images/architecture.png'));
  }
}
//Image.network(imageUrl)也可以通过ResizeImage构造方法调用
class ImageDemo01 extends StatelessWidget {
  const ImageDemo01({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image(
      // color: Colors.blueAccent,
      // colorBlendMode: BlendMode.colorDodge,
      image: NetworkImage(imageUrl),
      width: 800,
      height: 600,
      // fit: BoxFit.fitWidth,
      alignment: Alignment(1,1),
      repeat: ImageRepeat.repeat,
    );
  }
}

