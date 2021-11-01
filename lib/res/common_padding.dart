import 'package:flutter/cupertino.dart';
import 'package:quick_tow_trucker/res/res.dart';

class CommonPadding {
  static final commonWidthPadding30 = sizes!.widthRatio * 30.0;
  static final commonHeightPadding30 = sizes!.heightRatio * 30.0;

  static final getCommonPaddingLeftAndRightWidth30 =
      EdgeInsets.only(left: commonWidthPadding30, right: commonWidthPadding30);
}
