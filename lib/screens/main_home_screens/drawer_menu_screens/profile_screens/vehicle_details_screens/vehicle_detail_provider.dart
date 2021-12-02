import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/vehicle/delete_vehicle_response.dart';
import 'package:quick_tow_trucker/models/vehicle/get_user_vehicle_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/widgets/loader.dart';

class VehicleDetailProvider extends ChangeNotifier {
  BuildContext? context;

  bool isVehicleDataLoaded = false;
  bool isVehicleDeleted = false;
  final Loader _loader = Loader();

  GetUserVehicleResponse getUserVehicleResponse = GetUserVehicleResponse();
  DeleteVehicleResponse deleteVehicleResponse = DeleteVehicleResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isVehicleDataLoaded = false;
    isVehicleDeleted = false;
  }

  Future<void> getUserVehicleData({required String userID}) async {
    try {
      // _loader.showLoader(context: context);

      Map<String, dynamic> header = {"Content-Type": "application/json"};
      debugPrint("URL: $getVehicleByUserIdApiUrl");

      getUserVehicleResponse = await MyApi.callGetApi(
          url: getVehicleByUserIdApiUrl + userID.toString(),
          // body: body,
          myHeaders: header,
          modelName: Models.getUserVehicleModel);

      if (getUserVehicleResponse != null) {
        debugPrint("getUserVehicleResponse: ${getUserVehicleResponse.toJson()}");
        isVehicleDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("Something is wrong");
      }
    } catch (e) {
      debugPrint("Catch-Error: ${e.toString()}");
    }
  }

  Future<void> deleteVehicle({@required dynamic vehicleID}) async {
    try {
      _loader.showLoader(context: context);

      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {};
      debugPrint("URL: $deleteVehicleApiUrl");

      debugPrint("vehicleID: $vehicleID");

      deleteVehicleResponse = await MyApi.callDeleteApi(
          url: "$deleteVehicleApiUrl$vehicleID",
          myHeaders: header,
          modelName: Models.deleteVehicleModel);

      if (deleteVehicleResponse != null) {
        debugPrint("deleteVehicleResponse: ${deleteVehicleResponse.toJson()}");
        _loader.hideLoader(context!);
        Toasts.getSuccessToast(text: deleteVehicleResponse.data);
        isVehicleDeleted = true;
        notifyListeners();
      } else {
        debugPrint("Something is wrong");
      }
    } catch (e) {
      debugPrint("Delete-Vehicle: ${e.toString()}");
      _loader.hideLoader(context!);
    }
  }
}
