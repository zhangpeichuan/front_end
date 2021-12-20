import 'dart:io';
void main(List<String> args) {
  print('main start');

  getData().then((value){
    print(value);
  }).catchError((error){
    print(error);
  });
  print('main end');
}
Future getData() async{
  // 1.调用上次网络请求
  // 2、拿到结果作为下次的参数
  // getNetWorkData('argument1').then((value){
  //   print(value);
  //   return getNetWorkData(value);
  // }).then((value){
  //   print(value);
  //   return getNetWorkData(value);
  //  }).then((value){
  //    print(value);
  //  });
  var res1 = await getNetWorkData('arg1');
  print(res1);
  var res2 = await getNetWorkData(res1);
  print(res2);
  var res3 = await getNetWorkData(res2);
  // throw Exception('sorry error');
  return res3;
}
Future getNetWorkData(String arg){
  return Future(() {
    sleep(Duration(seconds: 2));
    return "Hello World!" + arg;
  });
}