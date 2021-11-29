import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/company_support_screens/message_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/end_ride_screens/end_ride_screen.dart';
import 'package:quick_tow_trucker/widgets/common_drawer_bar.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

class EnRouteScreen extends StatefulWidget {
  const EnRouteScreen({Key? key}) : super(key: key);

  @override
  _EnRouteScreenState createState() => _EnRouteScreenState();
}

class _EnRouteScreenState extends State<EnRouteScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final CameraPosition _initialLocation = const CameraPosition(
      target: LatLng(31.464796339004113, 74.38949657281934), zoom: 12.0);

  GoogleMapController? mapController;
  final Set<maps.Marker> _markers = {};

  late BitmapDescriptor pinLocationIcon;
  LatLng pinPosition = const LatLng(37.3797536, -122.1017334);

  @override
  void initState() {
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
      key: scaffoldKey,
      drawer: CommonDrawerBar.getDrawerBar(context: context, isCurrentScreen: 7),
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
                        title: "",
                        icon: "assets/png/menu_icon@2x.png",
                        onPress: () {
                          // Navigator.pop(context);
                          scaffoldKey.currentState?.openDrawer();
                        }),
              ),
              Positioned(
                  top: sizes!.heightRatio * 90.0,
                  left: sizes!.widthRatio * 45.0,
                  right: sizes!.widthRatio * 45.0,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const EndRideScreen()));
                      },
                      child: Image.asset(
                        "assets/png/en_route_location_maker@2x.png",
                        height: sizes!.heightRatio * 220.0,
                        width: sizes!.widthRatio * 220.0,
                      ))),
              Positioned(
                top: sizes!.heightRatio * 200.0,
                left: sizes!.widthRatio * 20.0,
                // right: sizes!.widthRatio * 45,
                child:
                    CommonWidgets.getAwayContainer(arrivingTime: "30 Mins"),
              ),
              Positioned(
                  bottom: sizes!.heightRatio * 280.0,
                  left: sizes!.widthRatio * 45.0,
                  right: sizes!.widthRatio * 45,
                  child: Image.asset(
                    "assets/png/en_route_location_maker_pin@2x.png",
                    height: sizes!.heightRatio * 32.0,
                    width: sizes!.widthRatio * 32.0,
                  )),

              // Bottom Container
              Positioned(
                  bottom: sizes!.heightRatio * 0.0,
                  // left: sizes!.widthRatio * 2.0,
                  // right: sizes!.widthRatio * 2.0,
                  child: CommonWidgets.getBottomCard(
                      onCancelRidePress: () {},
                      onChatPress: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const MessageScreen()));
                      },
                      onStartRidePress: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const EndRideScreen()));
                      },
                      onViewDetailPress: () {
                        viewDetailsPopUp(context);
                      })),
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
