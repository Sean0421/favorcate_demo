import 'package:favorcate_demo/core/extension/int_extension.dart';
import 'package:favorcate_demo/ui/shared/size_fit.dart';


extension DoubleFit on double {
  double get px{
    return HYSizefit.setPx(this);
  }

  double get rpx{
    return HYSizefit.setRpx(this);
  }
}