import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/auth/edit_profile_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
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
      // _loader.showLoader(context: context);

      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {
        "id": "78cee717-0cf9-40cf-b8e7-9dd77695eaaf",
        "email": "Driver101@jinnbyte.com",
        "password": "123Qw##",
        "firstName": "Driver",
        "lastName": "102",
        "phoneNumber": "90233023021090",
        "profilePhoto": "string"
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
        print("editProfileResponse: ${editProfileResponse.toJson()}");
        isEditProfileSuccessful = true;
        // _loader.hideLoader(context!);
        notifyListeners();
      } else {
        print("signUpResponse: Something wrong");
      }
    } catch (e) {
      print("Catch-Error: ${e.toString()}");
    }
  }
}
