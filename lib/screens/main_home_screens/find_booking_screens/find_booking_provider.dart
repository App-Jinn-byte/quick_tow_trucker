import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/booking/booking_accepted_response.dart';
import 'package:quick_tow_trucker/models/booking/booking_rejected_response.dart';
import 'package:quick_tow_trucker/models/booking/get_all_booking_list_response.dart';
import 'package:quick_tow_trucker/models/booking/user_requests/road_side_service_request_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';

class FindBookingProvider extends ChangeNotifier {
  BuildContext? context;

  bool isBookingListLoaded = false;
  bool isBookingAccepted = false;
  bool isBookingRejected = false;

  GetAllBookingListResponse getAllBookingListResponse =
      GetAllBookingListResponse();
  BookingAcceptedResponse bookingAcceptedResponse = BookingAcceptedResponse();
  BookingRejectedResponse bookingRejectedResponse = BookingRejectedResponse();

  RoadSideServiceRequestResponse roadSideServiceRequestResponse =
      RoadSideServiceRequestResponse();

  // final Loader _loader = Loader();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isBookingListLoaded = false;
    isBookingAccepted = false;
    isBookingRejected = false;
  }

  Future<void> acceptBookingRequest(
      {required String truckerUserID,
      required dynamic requestId,
      required dynamic requestStatusId}) async {
    try {
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {
        "requestId": requestId,
        "userId": truckerUserID,
        "requestatusId": 1
      };

      debugPrint("URL: $bookingAcceptedApiUrl");
      debugPrint("Body: $body");

      bookingAcceptedResponse = await MyApi.callPostApi(
          url: bookingAcceptedApiUrl,
          myHeaders: header,
          body: body,
          modelName: Models.bookingAcceptedModel);

      // bookingAcceptedResponse != null
      if (bookingAcceptedResponse.code == 1) {
        debugPrint(
            "bookingAcceptedResponse: ${bookingAcceptedResponse.toJson()}");
        isBookingAccepted = true;
        notifyListeners();
      }
    } catch (e) {
      debugPrint("Catch-Accept-Error: ${e.toString()}");
    }
  }

  Future<void> rejectBookingRequest(
      {required String truckerUserID,
      required dynamic requestId,
      required dynamic requestStatusId}) async {
    try {
      Map<String, dynamic> header = {"Content-Type": "application/json"};

      Map<String, dynamic> body = {
        "requestId": requestId,
        "userId": truckerUserID,
        "requestatusId": 1
      };
      debugPrint("URL: $bookingRejectedApiUrl");
      debugPrint("Body: $body");

      bookingRejectedResponse = await MyApi.callPostApi(
          url: bookingRejectedApiUrl,
          myHeaders: header,
          body: body,
          modelName: Models.bookingRejectedModel);
      // bookingRejectedResponse != null
      if (bookingRejectedResponse.code == 1) {
        debugPrint(
            "bookingRejectedResponse: ${bookingRejectedResponse.toJson()}");
        isBookingRejected = true;
        notifyListeners();
      } else {
        debugPrint("bookingRejectedResponse: There is any error");
      }
    } catch (e) {
      debugPrint("Catch-Accept-Error: ${e.toString()}");
    }
  }

  Future<void> getAllBookingList({required String userId}) async {
    try {
      Map<String, dynamic> header = {"Content-Type": "application/json"};

      debugPrint("URL: ${getAllBookingListApiUrl + userId} ");
      getAllBookingListResponse = await MyApi.callGetApi(
          url: getAllBookingListApiUrl + userId,
          myHeaders: header,
          modelName: Models.getAllBookingListModel);
      // getAllBookingListResponse != null
      if (getAllBookingListResponse.code == 1) {
        debugPrint(
            "getAllBookingListResponse: ${getAllBookingListResponse.toJson()}");
        isBookingListLoaded = true;
        // _loader.hideLoader(context!);
        notifyListeners();
      } else {
        debugPrint("getAllBookingListResponse: There is any error");
      }
    } catch (e) {
      // _loader.hideLoader(context!);
      debugPrint("getAllBookingListResponse-Error: ${e.toString()}");
    }
  }
}
