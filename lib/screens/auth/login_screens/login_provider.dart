import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/models/auth/login_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/widgets/loader.dart';

class LoginProvider extends ChangeNotifier {
  BuildContext? context;

  bool isLoginSuccessful = false;
  LoginResponse loginResponse = LoginResponse();
  final Loader _loader = Loader();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isLoginSuccessful = false;
  }

  Future<void> loginApi(
      {@required String? email, @required String? password}) async {
    try {
      _loader.showLoader(context: context);

      Map<String, dynamic> header = {"Content-Type": "application/json"};

      Map<String, dynamic> body = {"Email": email, "Password": password};

      // "Email": "driver@gmail.com",
      // "Password": "123Qw#"

      print("URL: $loginApiUrl");

      loginResponse = await MyApi.callPostApi(
          url: loginApiUrl,
          body: body,
          myHeaders: header,
          modelName: Models.loginModel);
      print("LoginBody: $body");

      if (loginResponse != null) {
        PreferenceUtils.clearPreferences();

        await PreferenceUtils.setLoginResponse(loginResponse).then((_) {
          String name = PreferenceUtils.getString(Strings.loginFirstName) ?? "";
          String savedToken =
              PreferenceUtils.getString(Strings.loginUserToken) ?? "";
          print("UserName: $name");
          print("savedToken: $savedToken");

          print("loginResponse: ${loginResponse.data!.toJson()}");
          isLoginSuccessful = true;
          _loader.hideLoader(context!);
          notifyListeners();
        }).onError((error, stackTrace) {
          print("Save Error: ${error.toString()}");
          _loader.hideLoader(context!);
        });
      } else {
        print("loginResponse: Something wrong");
        _loader.hideLoader(context!);
      }
    } catch (e) {
      print("Catch-Error-Login: ${e.toString()}");
      _loader.hideLoader(context!);
    }
  }

  Future<void> callLoginApi(
      {@required String? email, @required String? password}) async {
    if (email != null && password != null) {
      if (email.isNotEmpty && password.isNotEmpty) {
        loginApi(email: email, password: password);
      } else if (email.isEmpty && password.isEmpty) {
        Toasts.getErrorToast(text: "Email and Password Missing");
      } else if (email.isEmpty) {
        Toasts.getErrorToast(text: "Email Missing");
      } else if (password.isEmpty) {
        Toasts.getErrorToast(text: "Password  missing");
      }
    } else {
      Toasts.getErrorToast(text: "Invalid email or password");
    }
  }
}
