import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/add_service_screens/add_service_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/company_support_screens/message_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/payment_total_screens/payment_total_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

class EndRideScreen extends StatefulWidget {
  const EndRideScreen({Key? key}) : super(key: key);

  @override
  _EndRideScreenState createState() => _EndRideScreenState();
}

class _EndRideScreenState extends State<EndRideScreen> {
  final CameraPosition _initialLocation = const CameraPosition(
      target: LatLng(31.464796339004113, 74.38949657281934), zoom: 12.0);

  GoogleMapController? mapController;
  final Set<maps.Marker> _markers = {};

  late BitmapDescriptor pinLocationIcon;
  LatLng pinPosition = const LatLng(37.3797536, -122.1017334);

  @override
  void initState() {
    // welcomeBackPopUp();

    // setCustomMapPin();

    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(devicePixelRatio: 2.5),
            'assets/destination_map_marker.png')
        .then((onValue) {
      pinLocationIcon = onValue;
    });

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
      body: SizedBox(
          height: sizes!.height,
          width: sizes!.width,
          child: Stack(
            children: [
              Positioned(
                  child: GoogleMap(
                initialCameraPosition: _initialLocation,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                mapType: MapType.normal,
                zoomGesturesEnabled: false,
                markers: _markers,
                zoomControlsEnabled: false,
                onMapCreated: (GoogleMapController controller) {
                  mapController = controller;
                  // welcomeBackPopUp(context);
                },
              )),
              Positioned(
                // bottom: sizes!.heightRatio * 165.0,
                left: sizes!.widthRatio * 0.0,
                top: sizes!.widthRatio * 25.0,
                // right: sizes!.widthRatio * 45,
                child:
                    CommonWidgets.getAppBarWithoutContainerTitleAndBackButton(
                        context: context,
                        title: "End Ride",
                        icon: "assets/png/back_btn_icon@2x.png",
                        onPress: () {
                          Navigator.pop(context);
                        }),
              ),
              Positioned(
                  top: sizes!.heightRatio * 110.0,
                  left: sizes!.widthRatio * 45.0,
                  right: sizes!.widthRatio * 45,
                  child: GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     SlideRightRoute(page: const PaymentScreen()));
                      },
                      child: Image.asset(
                          "assets/png/en_route_location_maker@2x.png"))),
              Positioned(
                top: sizes!.heightRatio * 120.0,
                left: sizes!.widthRatio * 45.0,
                // right: sizes!.widthRatio * 45,
                child:
                    CommonWidgets.getArrivedContainer(arrivingTime: "30 Mins"),
              ),
              Positioned(
                  bottom: sizes!.heightRatio * 140.0,
                  left: sizes!.widthRatio * 45.0,
                  right: sizes!.widthRatio * 45,
                  child: Image.asset(
                      "assets/png/en_route_location_maker_pin@2x.png")),
              Positioned(
                  bottom: sizes!.heightRatio * 0.0,
                  // left: sizes!.widthRatio * 45.0,
                  // right: sizes!.widthRatio * 45,
                  child: CommonWidgets.getBottomCardEndRideScreen(
                    onChatPress: () {
                      Navigator.push(context,
                          SlideRightRoute(page: const MessageScreen()));
                    },
                    onViewDetailPress: () {
                      viewDetailsPopUp(context);
                    },
                    onAddServicePress: () {
                      Navigator.push(context,
                          SlideRightRoute(page: const AddServiceScreen()));
                    },
                    onEndRidePress: () {
                      Navigator.push(context,
                          SlideRightRoute(page: const PaymentTotalScreen()));
                    },
                  )),
            ],
          )),
    ));
  }

  void viewDetailsPopUp(context) {
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
        transitionDuration: const Duration(milliseconds: 500),
        // DURATION FOR ANIMATION
        barrierDismissible: false,
        barrierLabel: 'LABEL',
        context: context,
        pageBuilder: (context, animation, animationTime) {
          return Center(
              child: PopUpComponents.getViewDetailPopUp(
            context,
          ));
        });
  }
}
