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
class HYHomePage extends StatefulWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}
/**
 *动画的问题 _HYHomePageAnimation1State
 * 1、每次动画都需要setStates
 * 2、需要重新Builder
 * 优化方案
 *  AnimatedWidget
 *    讲需要执行动画的Widget中放到一个AnimatedWidget中的builder进行返回
 *    缺点
 *    1、每次都需要创建一个类
 *    2、如果构建的wiget有子类，那么子类依然会构建builder方法
 *  AnimatedBuilder
 *
 */
class _HYHomePageState extends State<HYHomePage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _annimation;
  late Animation<double> _sizeAnnimation;
  late Animation _colorAnnimation;
  late Animation<double> _opacityAnnimation;
  late Animation<double> _radiansAnnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),);
    // 2、设置Curve的值
    _annimation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    // 3、设置 Tween 创建多个Tween

    // 3.1 创建大小size的Tween
    _sizeAnnimation = Tween(begin: 10.0,end: 200.0).animate(_controller);
    // 3.2 创建颜色color的Tween
    _colorAnnimation = ColorTween(begin: Colors.red,end: Colors.blue).animate(_controller);
    // 3.3 创建透明度opacity的Tween
    _opacityAnnimation = Tween(begin: 0.0,end: 1.0).animate(_controller);
    // 3.4 创建旋转角度radians的Tween
    _radiansAnnimation = Tween(begin: -pi/4,end: pi/2).animate(_controller);

    //4、监听动画值的改变
    _controller.addListener(() {
    });
    //监听动画反转变化
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed){
        _controller.reverse();
      }else if (status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    /**
     *1、大小变化动画
     *2、颜色变化的动画
     * 3、Wiget透明度变化 Opacity
     * 4、旋转动画 transform
     * */
    print('$build _sizeAnnimation.value');
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx,child){
            return Opacity(
              opacity: _opacityAnnimation.value,
              child: Transform(
                transform: Matrix4.rotationZ(_radiansAnnimation.value),
                alignment: Alignment.center,
                child: Container(
                  width: _sizeAnnimation.value,
                  height: _sizeAnnimation.value,
                  color: _colorAnnimation.value,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isAnimating) {
            _controller.stop();
          } else if (_controller.status == AnimationStatus.forward) {
            _controller.reverse();
          } else if (_controller.status == AnimationStatus.reverse) {
            _controller.forward();
          }else{
            _controller.forward();
          }
        },
        child: Icon(Icons.add,),
      ),
    );
  }
}
