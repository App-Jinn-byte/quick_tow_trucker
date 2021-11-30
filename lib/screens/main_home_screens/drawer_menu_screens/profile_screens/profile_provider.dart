import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/res/strings.dart';

class ProfileProvider extends ChangeNotifier {
  BuildContext? context;

  late String firstName;
  late String lastName;
  late String email;
  late String phone;
  late dynamic userPhoto;

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    firstName = lastName = email = phone = userPhoto = "";
    getUserDataFromStorage();
  }

  Future<void> getUserDataFromStorage() async {
    firstName =
        await PreferenceUtils.getString(Strings.loginFirstName) ?? "Alan";
    lastName = await PreferenceUtils.getString(Strings.loginLastName) ?? "Thor";
    email =
        await PreferenceUtils.getString(Strings.loginEmail) ?? "Alan@gmail.com";
    phone =
        await PreferenceUtils.getString(Strings.loginPhoneNo) ?? "(900) 900987";
    userPhoto = await PreferenceUtils.getUserImage() ?? "";
    print("pro-${userPhoto}");
    notifyListeners();
  }
}
