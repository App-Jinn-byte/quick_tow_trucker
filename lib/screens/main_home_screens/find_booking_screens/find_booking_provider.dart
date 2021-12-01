import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/booking/get_all_booking_list_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/widgets/loader.dart';

class FindBookingProvider extends ChangeNotifier {
  BuildContext? context;

  bool isBookingListLoaded = false;
  GetAllBookingListResponse getAllBookingListResponse =
      GetAllBookingListResponse();
  final Loader _loader = Loader();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isBookingListLoaded = false;
  }

  Future<void> getAllBookingList() async {
    try {
      Map<String, dynamic> header = {"Content-Type": "application/json"};

      print("URL: $getAllBookingListApiUrl");
      getAllBookingListResponse = await MyApi.callGetApi(
          url: getAllBookingListApiUrl,
          myHeaders: header,
          modelName: Models.getAllBookingListModel);

      if (getAllBookingListResponse != null) {
        print(
            "getAllBookingListResponse: ${getAllBookingListResponse.toJson()}");
        isBookingListLoaded = true;
        _loader.hideLoader(context!);
        notifyListeners();
      } else {
        _loader.hideLoader(context!);
      }
    } catch (e) {
      _loader.hideLoader(context!);
    }
  }
}
