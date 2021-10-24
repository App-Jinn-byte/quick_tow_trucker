import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    // PreferenceUtils.init();
    this.context = context;
    // navigateToNextScreen();
  }

  Future<void> loginApi(
      {@required String? email, @required String? password}) async {
    print("Email: $email, password $password");
  }
}
