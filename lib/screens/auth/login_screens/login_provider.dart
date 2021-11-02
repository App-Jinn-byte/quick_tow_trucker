import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/auth/login_response.dart';
import 'package:quick_tow_trucker/models/auth/login_response_demo.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';

class LoginProvider extends ChangeNotifier {
  BuildContext? context;

  bool isLoginSuccessful = false;

  LoginResponse loginResponse = LoginResponse();

  Future<void> init({@required BuildContext? context}) async {
    // PreferenceUtils.init();
    this.context = context;
    isLoginSuccessful = false;
  }

  Future<void> loginApi(
      {@required String? email, @required String? password}) async {
    try {
      Map<String, dynamic> header = {"Content-Type": "application/json"};

      Map<String, dynamic> body = {
        "Email": "thor@gmail.com",
        "Password": "123456",
        "DeviceId": "111"
      };

      print("URL: ${loginApiUrl}");

      loginResponse = await MyApi.callPostApi(
          url: loginApiUrl,
          body: body,
          myHeaders: header,
          modelName: Models.loginModel);
      print("LoginBody: $body");

      if (loginResponse != null) {
        print("loginResponse: ${loginResponse.data!.toJson()}");
        notifyListeners();
      } else {
        print("loginResponse: Something wrong");
      }
    } catch (e) {
      print("Catch-Error-Login: ${e.toString()}");
    }
  }
}
