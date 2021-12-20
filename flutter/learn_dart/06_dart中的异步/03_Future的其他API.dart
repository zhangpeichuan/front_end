void main(List<String> args) {
  // Future(() {
  //   return 'Hello World!';
  // }).then((value) {
  //   print(value);
  // });
  Future.value("Hello World! ------").then((value) => print(value));

  Future.error('错误信息').catchError((error){
    print(error);
  }
  );

  Future.delayed(Duration(seconds: 2),(){
    return 'delay';
  }).then((value){
    print(value);
    return 'Hello flutter';
  }).then((value) => print(value));
}