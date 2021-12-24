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
    return IconExtension();

  }
}
class IconExtension extends StatelessWidget {
  const IconExtension({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Icon字体图标和图片图标
    //1、字体图标矢量图，方法的时候不会失真
    //2、字体图标可以设置颜色
    //3、图标很多时，占据控件更小
    // return Icon(Icons.pets,size: 100,color: Colors.red,);
    // return Icon(IconData(0xe4a1, fontFamily: 'MaterialIcons'),size: 100,color: Colors.red,);
    //1、 0xe4a1->转换成对应的字体
    //2、设置对应的字体
    return Text("\ue4a1",style: TextStyle(fontSize: 100,color: Colors.red,fontFamily: 'MaterialIcons'),);
  }
}

//1、展位图的问题
//2、图片缓存的 1000张图片，最大100M
class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
        fadeInDuration: Duration(milliseconds: 100),
        fadeOutDuration: Duration(milliseconds: 100),
        placeholder: AssetImage('assets/images/architecture.png'),
        image: NetworkImage(imageUrl));
  }
}
//1、默认button上下有一定的间距
class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        ButtonTheme(
            minWidth: 30,
            height: 30,
            child:FlatButton(
              padding: EdgeInsets.all(0),
              color: Colors.green,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child:Text('FlatButton 1',style: TextStyle(color: Colors.white),),
              onPressed: ()=> print('FlatButton onPressed'),
            )),
        FlatButton(
          color: Colors.green,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child:Text('FlatButton 2',style: TextStyle(color: Colors.white),),
          onPressed: ()=> print('FlatButton onPressed'),
        ),
      ],
    );
  }
}

