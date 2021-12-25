import 'dart:ui';

class HYSizeFit{
  static late double physicalWidth;
  static late double physicalHeight;
  static late double screenWidth;
  static late double screenHeight;
  static late double dpr;
  static late double statusHeight;
  static late double rpx;
  static late double px;

  static void initialize({double standardSize = 750.0}){
    //拿到分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
    dpr = window.devicePixelRatio;
    statusHeight = window.padding.top / dpr;

    screenWidth = physicalWidth /dpr;
    screenHeight = physicalHeight /dpr;

    rpx = screenWidth/standardSize;
    px = screenWidth/standardSize * 2;
    print('dpr $dpr rpx $rpx');
    print('physicalWidth $physicalWidth physicalHeight $physicalHeight screenWidth $screenWidth screenHeight $screenHeight');

  }
  static setRpx(double size){
    return size*rpx;
  }
  static setPx(double size){
    return size * px;
  }
}
extension adfadf on int{

}