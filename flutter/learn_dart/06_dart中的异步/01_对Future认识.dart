import 'dart:io';
import 'dart:async';
void main(List<String> args) {
  print('main start');
  //发送一个网络请求
  var result = getNetWorkData();
  print(result);

  var future = getNetWorkData_Future();
  print(future);
  //2 拿到结果 ,需要再future函数有结果时，才执行回调函数
  future.then((value){
    print('$value');
  }).catchError((err){
    print('$err ------');
  }).whenComplete((){
    print('代码执行完成');
  });
  // future.then((value) => print('$value'));
  // future.catchError((err) =>  print('$err ------'));
  print('main end!');
}
String getNetWorkData(){
  sleep(Duration(seconds: 1));
  return 'HelloWorld!';
}
Future getNetWorkData_Future(){
  //1、耗时操作放到future
  // 1、只要有返回结果，name就执行Future对应的then回调(Promis-resove)
  // 2、如果没有结果返回(有错误信息),需要再Future回调中抛出一个异常(Promis-reject)
  return Future<String>(() {
    sleep(Duration(seconds: 1));
    return "HelloWorld!";
    // throw Exception("我是错误信息");
  });
}