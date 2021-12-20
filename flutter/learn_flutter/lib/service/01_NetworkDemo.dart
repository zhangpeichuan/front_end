import 'dart:core';
import 'package:flutter/material.dart';
import 'package:learn_flutter/service/http_request.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    //发送网络请求
    // //1、创建Dio对象
    // final dio = Dio();
    // //2、发送网络请求
    // dio.get('https://httpbin.org/get').then((value) => print(value));
    // dio.post('https://httpbin.org/post').then((value) => print(value));

    HttpRequest.request('https://httpbin.org/get',params: {"name":"123"}).then((value) => print(value));
    HttpRequest.request('/post',method: 'post',params: {"name":"123"}).then((value) => print(value));

  }
  @override
  Widget build(BuildContext context) {

    return Text('HelloWorld!');
  }
}