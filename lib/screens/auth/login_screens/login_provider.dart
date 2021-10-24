import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  BuildContext? context;

  bool isLoginSuccessful = false;

  Future<void> init({@required BuildContext? context}) async {
    // PreferenceUtils.init();
    this.context = context;
    isLoginSuccessful = false;
  }

  Future<void> loginApi(
      {@required String? email, @required String? password}) async {
    try {
      print("Email: $email, password $password");
    } catch (e) {
      print("Catch-Error: ${e.toString()}");
    }
  }
}
