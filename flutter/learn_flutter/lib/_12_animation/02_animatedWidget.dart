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
  double _minSize = 32.0;
  double _maxSize = 64.0;
  late Animation<double> _annimation;
  late Animation<double> _sizeAnnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),);
    // 2、设置Curve的值
    _annimation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    // 3、设置 Tween
    _sizeAnnimation = Tween(begin: _minSize,end: _maxSize).animate(_annimation);
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
    print('$build _sizeAnnimation.value');
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: HYAnimatedIcon(_sizeAnnimation),
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
class HYAnimatedIcon extends AnimatedWidget{
  const HYAnimatedIcon(Animation<double> animation) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    print('HYAnimatedIcon build');
    Animation<double> animation = listenable as Animation<double>;
    // TODO: implement build
    return Icon(Icons.favorite,color: Colors.red,size: animation.value,);
  }

}
/**
 * 1.Animation:抽象类
 *  *监听动画值的改变
 *  *监听动画状态的改变
 *  *value
 *  *status
 * dart语法 on
 * 2. AnimationController继承Animation
 *  *vsync 同步信号(this -> with SingleTickerProviderStateMixin)
 *  *
 *  *
 * 3、CurvedAnimation:
 *  * 作用：设置动画执行的速率(速率曲线)
 *
 * 4、Tween：设置动画执行的value范围
 *    begin:开始值
 *    end:结束值
 * */