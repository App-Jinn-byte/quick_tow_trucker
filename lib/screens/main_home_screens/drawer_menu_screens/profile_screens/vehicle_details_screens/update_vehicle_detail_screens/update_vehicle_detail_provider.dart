import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/models/vehicle/update_vehicle_response.dart';
import 'package:quick_tow_trucker/network_manager/api_url.dart';
import 'package:quick_tow_trucker/network_manager/models.dart';
import 'package:quick_tow_trucker/network_manager/my_api.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/routes/routes.dart';
import 'package:quick_tow_trucker/widgets/loader.dart';

class UpdateVehicleDetailProvider extends ChangeNotifier {
  BuildContext? context;

  bool isVehicleUpdatedSuccessfully = false;
  final Loader _loader = Loader();

  UpdateVehicleResponse updateVehicleResponse = UpdateVehicleResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isVehicleUpdatedSuccessfully = false;
  }

  Future<void> updateVehicle(
      {@required dynamic userID,
      @required dynamic id,
      @required String? make,
      @required String? model,
      @required String? plateNumber,
      @required String? category}) async {
    try {
      _loader.showLoader(context: context);

      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {
        "vehicleId": id,
        "make": make,
        "model": model,
        "licensePlateNumber": plateNumber,
        "picture": "string",
        "transmissionTypeId": 2,
        "userId": userID
      };

      print("Body: $body");
      print("URL: $updateVehicleApiUrl");

      updateVehicleResponse = await MyApi.callPutApi(
          url: updateVehicleApiUrl,
          body: body,
          myHeaders: header,
          modelName: Models.updateVehicleModel);

      if (updateVehicleResponse != null) {
        print("updateVehicleResponse: ${updateVehicleResponse.toJson()}");
        isVehicleUpdatedSuccessfully = true;
        _loader.hideLoader(context!);
        // Navigator.pop(context!);
        Navigator.of(context!).pushNamedAndRemoveUntil(
            Routes.vehicleDetailScreen, (Route<dynamic> route) => false);
        notifyListeners();
      } else {
        print("Something is wrong");
      }
    } catch (e) {
      print("Update-Vehicle: ${e.toString()}");
      _loader.hideLoader(context!);
    }
  }

  Future<void> updateVehicleValidateData({
    @required dynamic userID,
    @required dynamic id,
    @required String? make,
    @required String? model,
    @required String? plateNumber,
    @required String? transmission,
  }) async {
    if (make != null &&
        model != null &&
        plateNumber != null &&
        transmission != null) {
      if (make.isNotEmpty &&
          model.isNotEmpty &&
          plateNumber.isNotEmpty &&
          transmission.isNotEmpty) {
        await updateVehicle(
            userID: userID,
            id: id,
            make: make,
            model: model,
            plateNumber: plateNumber,
            category: transmission);
      } else if (make.isEmpty) {
        Toasts.getErrorToast(text: "Vehicle Make is missing");
      } else if (model.isEmpty) {
        Toasts.getErrorToast(text: "Vehicle Model is missing");
      } else if (plateNumber.isEmpty) {
        Toasts.getErrorToast(text: "Vehicle License Plate Number is missing");
      } else if (transmission.isEmpty) {
        Toasts.getErrorToast(text: "Vehicle Transmission Type is missing");
      }
    } else {
      Toasts.getErrorToast(text: "Invalid Information.");
    }
  }
}
