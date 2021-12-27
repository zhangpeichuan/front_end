import '../../ui/shared/size_fix.dart';
extension DoubleFit on double{
  double get px {
    return HYSizeFit.setPx(this);
  }
  double get rpx {
    return HYSizeFit.setRpx(this);
  }
}