import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/my_globals/my_globals.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';

class GetStartedProvider extends ChangeNotifier {
  BuildContext? context;
  late dynamic currentAddress;
  late dynamic currentPosition;

  Future<void> init({@required BuildContext? context}) async {
    PreferenceUtils.init();
    this.context = context;
  }

  //--- User Current Location ---//
  Future<void> getUserLocationWithPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Toasts.getErrorToast(text: 'Please enable Your Location Service');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Toasts.getErrorToast(text: 'Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Toasts.getErrorToast(
          text:
              'Location permissions are permanently denied, we cannot request permissions.');
    }

    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    try {
      List<Placemark> placeMarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placeMarks[0];

      currentPosition = position;
      MyGlobals.getUserLatLng = position;

      // currentAddress = "${place.name}\n ${place.postalCode}\n ${place.country}";
      currentAddress = "${place.name}";
      // MyGlobals.getUserCurrentLocationMarkTitle = "${place.name}";
      debugPrint(
          "CurrentAddress: ${place.name}\n ${place.postalCode}\n ${place.country}");
      Toasts.getSuccessToast(text: "$currentAddress \n $currentPosition");
      debugPrint(
          "CurrentLocation: Latitude ${position.latitude} Longitude ${position.longitude}");

      await navigateToNextScreen();
      notifyListeners();
    } catch (e) {
      debugPrint("TurnOnLocation: ${e.toString()}");
    }
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(const Duration(
      seconds: 3,
    ));
    if (PreferenceUtils.getString(Strings.loginEmail)!.isNotEmpty &&
        PreferenceUtils.getString(Strings.loginPassword)!.isNotEmpty) {
      await Navigator.pushReplacement(
          context!, SlideRightRoute(page: const FindBookingScreen()));
    } else {
      await Navigator.pushReplacement(
          context!, SlideRightRoute(page: const LoginScreen()));
    }
  }
}
