import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;

class WelcomeBackScreen extends StatefulWidget {
  const WelcomeBackScreen({Key? key}) : super(key: key);

  @override
  _WelcomeBackScreenState createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
  final CameraPosition _initialLocation = const CameraPosition(
      target: LatLng(31.464796339004113, 74.38949657281934), zoom: 12.0);

  GoogleMapController? mapController;
  final Set<maps.Marker> _markers = {};

  @override
  void initState() {
    // welcomeBackPopUp();

    _markers.add(const maps.Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId("111"),
      position: LatLng(31.464796339004113, 74.38949657281934),
      // TODO: Add original coordinate here
      infoWindow: InfoWindow(
        title: "Current Location",
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: sizes!.height,
            width: sizes!.width,
            child: Stack(
              children: [
                // Positioned(
                //     child: GoogleMap(
                //       initialCameraPosition: _initialLocation,
                //       myLocationEnabled: true,
                //       myLocationButtonEnabled: true,
                //       mapType: MapType.normal,
                //       zoomGesturesEnabled: true,
                //       markers: _markers,
                //       zoomControlsEnabled: false,
                //       onMapCreated: (GoogleMapController controller) {
                //         mapController = controller;
                //       },
                //     )),

                GestureDetector(
                  onTap: () {
                    welcomeBackPopUp();
                  },
                  child: Center(
                    child: Text("Click ME"),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void welcomeBackPopUp() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        //SHADOW EFFECT
        transitionBuilder: (context, animation, animationTime, widget) {
          animation =
              CurvedAnimation(parent: animation, curve: Curves.decelerate);
          return ScaleTransition(
            alignment: Alignment.center,
            scale: animation,
            child: widget,
          );
        },
        transitionDuration: const Duration(milliseconds: 1000),
        // DURATION FOR ANIMATION
        barrierDismissible: false,
        barrierLabel: 'LABEL',
        context: context,
        pageBuilder: (context, animation, animationTime) {
          return Center(
              child: PopUpComponents.welcomeBackScreenCustomPopUp(
            context,
          ));
        });
  }
}
