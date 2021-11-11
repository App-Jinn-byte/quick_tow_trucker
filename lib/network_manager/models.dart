import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/auth/edit_profile_response.dart';
import 'package:quick_tow_trucker/models/auth/login_response.dart';
import 'package:quick_tow_trucker/models/error_model/error_model.dart';

class Models {
  static const String loginModel = "LOGIN_MODEL";
  static const String errorModel = "ERROR_MODEL";
  static const String editProfileModel = "EDIT_PROFILE_MODEL";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      // case homeModel:
      //   return GetHomeResponse.fromJson(json);
      case loginModel:
        return LoginResponse.fromJson(json);
      // case signupModel:
      //   return SignUpResponse.fromJson(json);
      // case forgotPasswordModel:
      //   return ForgotPasswordResponse.fromJson(json);
      case editProfileModel:
        return EditProfileResponse.fromJson(json);
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
