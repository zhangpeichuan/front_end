import 'dart:io';

void main(List<String> args) {
  //
  print('main start');
   Future future = syntacticSugal();
  // Future future = getNetWorkData();
  future.then((value){
    print(value);
  });
  print(future);


  print('main end');
  //await async相当于Future的语法糖
}
Future getNetWorkData(){
  return Future(() {
    sleep(Duration(seconds: 2));
    return 'Hello World!';
  });
}
/***
 * 解决两个问题
 * 1、await必须在async函数中使用
 * 2、async函数返回的结果必须是一个Future
 */
Future syntacticSugal() async {
    return Future.delayed(Duration(seconds: 2),(){return 'Hello World!';});
}