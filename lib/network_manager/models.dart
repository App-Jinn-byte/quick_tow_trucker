import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Models {
  static const String SIGNUP_MODEL_NAME = "SIGN_UP_MODEL";
  static const String loginModel = "LOGIN_MODEL";
  static const String signupModel = "SIGNUP_MODEL";
  static const String forgotPasswordModel = "FORGOT_PASSWORD_MODEL";
  static const String editProfileModel = "EDIT_PROFILE_MODEL";
  static const String errorModel = "ERROR_MODEL";


  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      // case homeModel:
      //   return GetHomeResponse.fromJson(json);
      // case loginModel:
      //   return LoginResponse.fromJson(json);
      // case signupModel:
      //   return SignUpResponse.fromJson(json);
      // case forgotPasswordModel:
      //   return ForgotPasswordResponse.fromJson(json);
      // case editProfileModel:
      //   return EditProfileResponse.fromJson(json);
      // case errorModel:
      //   return ErrorResponse.fromJson(json);
    }
  }
}
