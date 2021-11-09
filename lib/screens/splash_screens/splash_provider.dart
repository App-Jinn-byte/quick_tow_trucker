import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';

class SplashProvider extends ChangeNotifier {
  BuildContext? context;

  Future<void> init({@required BuildContext? context}) async {
    PreferenceUtils.init();
    this.context = context;
    // await navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(const Duration(
      seconds: 3,
    ));
    if (PreferenceUtils.getString(Strings.loginFirstName)!.isNotEmpty &&
        PreferenceUtils.getString(Strings.loginPassword)!.isNotEmpty) {
      Navigator.pushReplacement(
          context!, SlideRightRoute(page: const FindBookingScreen()));
    } else {
      Navigator.pushReplacement(
          context!, SlideRightRoute(page: const LoginScreen()));
    }
  }
}
