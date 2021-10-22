
import 'package:flutter/material.dart';

class WelcomeBackProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    // PreferenceUtils.init();
    this.context = context;
    // navigateToNextScreen();
  }
}