import 'package:quick_tow_trucker/models/auth/edit_profile_response.dart';
import 'package:quick_tow_trucker/models/auth/login_response.dart';
import 'package:quick_tow_trucker/models/auth/photo_upload_response.dart';
import 'package:quick_tow_trucker/models/booking/booking_accepted_response.dart';
import 'package:quick_tow_trucker/models/booking/booking_rejected_response.dart';
import 'package:quick_tow_trucker/models/booking/get_all_booking_list_response.dart';
import 'package:quick_tow_trucker/models/error_model/error_model.dart';
import 'package:quick_tow_trucker/models/vehicle/delete_vehicle_response.dart';
import 'package:quick_tow_trucker/models/vehicle/get_user_vehicle_response.dart';
import 'package:quick_tow_trucker/models/vehicle/update_vehicle_response.dart';

class Models {
  static const String loginModel = "LOGIN_MODEL";
  static const String errorModel = "ERROR_MODEL";
  static const String editProfileModel = "EDIT_PROFILE_MODEL";
  static const String editProfileUploadPhotoModel =
      "EDIT_PROFILE_UPLOAD_PHOTO_MODEL";

  // Vehicle
  static const String getUserVehicleModel = "GET_USER_VEHICLE_MODEL";
  static const String updateVehicleModel = "UPDATE_VEHICLE_MODEL";
  static const String deleteVehicleModel = "DELETE_VEHICLE_MODEL";

  //Booking
  static const String getAllBookingListModel = "GET_ALL_BOOKING_LIST_MODEL";
  static const String bookingAcceptedModel = "BOOKING_ACCEPTED_MODEL";
  static const String bookingRejectedModel = "BOOKING_REJECTED_MODEL";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case loginModel:
        return LoginResponse.fromJson(json);
      case editProfileModel:
        return EditProfileResponse.fromJson(json);
      case editProfileUploadPhotoModel:
        return PhotoUploadResponse.fromJson(json);
      case getUserVehicleModel:
        return GetUserVehicleResponse.fromJson(json);
      case updateVehicleModel:
        return UpdateVehicleResponse.fromJson(json);
      case deleteVehicleModel:
        return DeleteVehicleResponse.fromJson(json);
      case getAllBookingListModel:
        return GetAllBookingListResponse.fromJson(json);
      case bookingAcceptedModel:
        return BookingAcceptedResponse.fromJson(json);
      case bookingRejectedModel:
        return BookingRejectedResponse.fromJson(json);
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
