import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';

class SplashProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    PreferenceUtils.init();
    this.context = context;
    // navigateToNextScreen();
  }
}
