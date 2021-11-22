import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/auth/edit_profile_response.dart';
import 'package:quick_tow_trucker/models/auth/login_response.dart';
import 'package:quick_tow_trucker/models/auth/photo_upload_response.dart';
import 'package:quick_tow_trucker/models/error_model/error_model.dart';
import 'package:quick_tow_trucker/models/vehicle/get_user_vehicle_response.dart';

class Models {
  static const String loginModel = "LOGIN_MODEL";
  static const String errorModel = "ERROR_MODEL";
  static const String editProfileModel = "EDIT_PROFILE_MODEL";
  static const String editProfileUploadPhotoModel =
      "EDIT_PROFILE_UPLOAD_PHOTO_MODEL";

  static const String getUserVehicleModel = "GET_USER_VEHICLE_MODEL";

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
      case editProfileUploadPhotoModel:
        return PhotoUploadResponse.fromJson(json);
      case getUserVehicleModel:
        return GetUserVehicleResponse.fromJson(json);
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
