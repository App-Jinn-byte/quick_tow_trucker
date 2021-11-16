import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/models/auth/edit_profile_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/widgets/loader.dart';

class EditProfileProvider extends ChangeNotifier {
  BuildContext? context;

  EditProfileResponse editProfileResponse = EditProfileResponse();
  bool isEditProfileSuccessful = false;
  final Loader _loader = Loader();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isEditProfileSuccessful = false;
  }

  Future<void> callEditProfileApi(
      {@required String? id,
      @required String? firstName,
      @required String? lastName,
      @required String? phoneNumber,
      @required String? email,
      @required String? password,
      @required String? profilePhoto}) async {
    try {
      _loader.showLoader(context: context!);

      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {
        "id": id, //"78cee717-0cf9-40cf-b8e7-9dd77695eaaf",
        "email": email, //"Driver101@jinnbyte.com",
        "password": password, //"123Qw##",
        "firstName": firstName, //"Driver",
        "lastName": lastName, //"102",
        "phoneNumber": phoneNumber, //"90233023021090",
        "profilePhoto": profilePhoto, //"string"
      };

      print("URL: $editProfileApiUrl");
      print("Before: Edit Profile Body: $body");

      editProfileResponse = await MyApi.callPutApi(
          url: editProfileApiUrl,
          body: body,
          myHeaders: header,
          modelName: Models.editProfileModel);
      print("After: Edit Profile Body: $body");

      if (editProfileResponse != null) {
        await PreferenceUtils.setEditProfileResponse(editProfileResponse)
            .then((_) {
          String name = PreferenceUtils.getString(Strings.loginFirstName) ?? "";

          print("UserName: $name");
          print("editProfileResponse: ${editProfileResponse.toJson()}");
          isEditProfileSuccessful = true;
          _loader.hideLoader(context!);
          Navigator.pop(context!);
          notifyListeners();
        }).onError((error, stackTrace) {
          print("Save Error: ${error.toString()}");
          _loader.hideLoader(context!);
        });
      } else {
        print("signUpResponse: Something wrong");
        _loader.hideLoader(context!);
      }
    } catch (e) {
      print("Catch-Error: ${e.toString()}");
      _loader.hideLoader(context!);
    }
  }

  Future<void> callUpdateApi(
      {@required String? id,
      @required String? firstName,
      @required String? lastName,
      @required String? email,
      @required String? phoneNumber,
      @required String? password,
      @required String? profilePhoto}) async {
    if (firstName != null &&
        lastName != null &&
        email != null &&
        password != null &&
        phoneNumber != null &&
        password != null &&
        profilePhoto != null) {
      if (firstName.isNotEmpty &&
          lastName.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          profilePhoto.isNotEmpty) {
        callEditProfileApi(
            id: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            profilePhoto: profilePhoto);
      } else if (firstName.isEmpty) {
        Toasts.getErrorToast(text: "First Name is missing");
      } else if (lastName.isEmpty) {
        Toasts.getErrorToast(text: "Last Name is missing");
      } else if (email.isEmpty) {
        Toasts.getErrorToast(text: "Email is missing");
      } else if (phoneNumber.isEmpty) {
        Toasts.getErrorToast(text: "Phone Number is missing");
      } else if (password.isEmpty) {
        Toasts.getErrorToast(text: "Password  missing");
      } else if (profilePhoto.isEmpty) {
        Toasts.getErrorToast(text: "Photo is missing");
      }
    } else {
      Toasts.getErrorToast(text: "Invalid data");
    }
  }
}
