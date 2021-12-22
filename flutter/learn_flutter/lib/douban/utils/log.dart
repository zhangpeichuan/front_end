import 'package:flutter/foundation.dart';
void HYLog(Object message,StackTrace trace){
  if (kDebugMode) {
    //
    HYCustomTrace programInfo = HYCustomTrace(trace);
    if (programInfo != null &&
        programInfo.fileName != null &&
        programInfo.lineNumber != null) {
      print(
          "所在文件: ${programInfo.fileName}, 所在行: ${programInfo.lineNumber}, 打印信息: $message");
    } else {
      print("打印内容:$message");
    }
  } else if (kReleaseMode) {
    print("----ReleaseMode-------");
  } else if (kProfileMode) {
    print("----ProfileMode-------");
  }
}
class HYCustomTrace{
  final StackTrace _trace;
  late String fileName;
  late int lineNumber;
  late int columnNumber;

  HYCustomTrace(this._trace){
    _parseTrace();
  }
  void _parseTrace(){
    var traceString = this._trace.toString().split("\n")[0];
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceString.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(':');
    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    columnNumber = int.parse(columnStr);

  }
}