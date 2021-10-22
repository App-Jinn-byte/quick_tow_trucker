import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    // PreferenceUtils.init();
    this.context = context;
    // navigateToNextScreen();
  }
}
