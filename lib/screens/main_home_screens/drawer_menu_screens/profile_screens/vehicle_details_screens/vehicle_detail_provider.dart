import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/vehicle/get_user_vehicle_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/widgets/loader.dart';

class VehicleDetailProvider extends ChangeNotifier {
  BuildContext? context;

  bool isVehicleDataLoaded = false;
  final Loader _loader = Loader();

  GetUserVehicleResponse getUserVehicleResponse = GetUserVehicleResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isVehicleDataLoaded = false;
  }

  Future<void> getUserVehicleData({required String userID}) async {
    try {
      // _loader.showLoader(context: context);

      Map<String, dynamic> header = {"Content-Type": "application/json"};
      print("URL: $getVehicleByUserIdApiUrl");

      getUserVehicleResponse = await MyApi.callGetApi(
          url: getVehicleByUserIdApiUrl + userID.toString(),
          // body: body,
          myHeaders: header,
          modelName: Models.getUserVehicleModel);

      if (getUserVehicleResponse != null) {
        print("getUserVehicleResponse: ${getUserVehicleResponse.toJson()}");
        isVehicleDataLoaded = true;
        notifyListeners();
      } else {
        print("Something is wrong");
      }
    } catch (e) {
      print("Catch-Error: ${e.toString()}");
    }
  }
}
