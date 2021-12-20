import 'dart:isolate';

void main(List<String> args) async {
    print('main start');
// 1.创建管道
  ReceivePort receivePort = ReceivePort();
  // 2、创建Isolate
  Isolate isolate = await Isolate.spawn<SendPort>(foo,receivePort.sendPort);
  //3、监听管道
  receivePort.listen((message){
    print(message);
    // 不再使用时，我们会关闭管道
    receivePort.close();
    isolate.kill(priority: Isolate.immediate);
  });
  print('main end');
}
foo(SendPort send){
  return send.send('Hello World!');
}