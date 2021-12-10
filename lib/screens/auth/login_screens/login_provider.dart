import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/ChatLogics/Chat_Message_Models/User_Model.dart';
import 'package:quick_tow_trucker/ChatLogics/View_Providers/User_Provider.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/models/auth/login_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
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
      debugPrint("URL: $loginApiUrl");

      loginResponse = await MyApi.callPostApi(
          url: loginApiUrl,
          body: body,
          myHeaders: header,
          modelName: Models.loginModel);
      debugPrint("LoginBody: $body");

      // LoginResponse != null
      if (loginResponse.code == 1) {
        PreferenceUtils.clearPreferences();

        await PreferenceUtils.setLoginResponse(loginResponse).then((_) async {
          String name = PreferenceUtils.getString(Strings.loginFirstName) ?? "";
          String savedToken =
              PreferenceUtils.getString(Strings.loginUserToken) ?? "";
          debugPrint("UserName: $name");
          debugPrint("savedToken: $savedToken");

          var userPhoto = PreferenceUtils.getUserImage();
          debugPrint("userPhoto: $userPhoto");

          // Chat Logics:
          UserModel firebaseUser =
              UserModel(name: name, imageUrl: userPhoto, email: email);
          // print(
          //     "firebaseUser: ${firebaseUser.name}, ${firebaseUser.email}, ${firebaseUser.imageUrl}");
          UserModel? u =
              await UserProvider().getUserWithEmail(email: firebaseUser.email);
          if (u != null) {
            //User Alright Exist
            firebaseUser.id = u.id;
          }
          UserProvider().addUser(firebaseUser);
          await PreferenceUtils.setString("firebase_id", firebaseUser.id!);
          // Chat Logics End:

          debugPrint("loginResponse: ${loginResponse.data!.toJson()}");
          isLoginSuccessful = true;
          _loader.hideLoader(context!);

          Navigator.pushReplacement(
              context!, SlideRightRoute(page: const FindBookingScreen()));

          notifyListeners();
        }).onError((error, stackTrace) {
          debugPrint("Save Error: ${error.toString()}");
          _loader.hideLoader(context!);
        });
      } else {
        debugPrint("loginResponse: There is any error");
        _loader.hideLoader(context!);
      }
    } catch (e) {
      debugPrint("Catch-Error-Login: ${e.toString()}");
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
