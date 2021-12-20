import 'dart:io';

void main(List<String> args) {
  print('main start');
  Future((){
    // throw Exception('第一次异常');
    sleep(Duration(seconds: 1));
    return "第一次结果";
  }).then((result){
    print(result);
    // throw Exception('第二次异常');
    sleep(Duration(seconds: 2));
    return "第二次结果"; 
  }).then((res) {
    print(res);
        throw Exception('第三次异常');
    sleep(Duration(seconds: 3));
    return "第三次结果"; 
  }).then((res) {
    print(res);
 
  }).catchError((e){
      print(e);
  });
  print('main end');
}