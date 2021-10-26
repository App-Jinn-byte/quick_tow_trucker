import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/auth/profile_screens/profile_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class FindBookingScreen extends StatefulWidget {
  const FindBookingScreen({Key? key}) : super(key: key);

  @override
  _FindBookingScreenState createState() => _FindBookingScreenState();
}

class _FindBookingScreenState extends State<FindBookingScreen> {

  final CameraPosition _initialLocation = const CameraPosition(
      target: LatLng(31.464796339004113, 74.38949657281934), zoom: 12.0);

  GoogleMapController? mapController;
  final Set<maps.Marker> _markers = {};

  late BitmapDescriptor pinLocationIcon;
  LatLng pinPosition = const LatLng(37.3797536, -122.1017334);

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // welcomeBackPopUp();

    // setCustomMapPin();

    BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5),
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

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/png/menu_icon@2x.png');
  }

  @override
  Widget build(BuildContext context) {
    LatLng pinPosition = const LatLng(37.3797536, -122.1017334);

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        height: sizes!.heightRatio * 44,
                        width: sizes!.widthRatio * 44,
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/png/image_profile_placeholder.png",
                          ),
                          radius: 50.0,
                          backgroundColor: AppColors.transparentColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: sizes!.heightRatio * 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getSubHeadingTextWith15(
                                "Alan Thor", Assets.poppinsMedium,
                                color: AppColors.blackTextColor,
                                lines: 1,
                                fontWeight: FontWeight.bold),
                            TextView.getRegular13Text(
                                "John Doe.ellis@gmail.com",
                                Assets.poppinsRegular,
                                color: AppColors.blackTextColor,
                                lines: 1)
                          ],
                        ),
                      )


                    ],
                  )),
              ListTile(
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getDrawerMenuText13(
                      "Home", Assets.poppinsMedium,
                      color: AppColors.blackTextColor, lines: 1),
                ),
                leading: Image.asset(
                  "assets/png/email_icon@2x.png",
                  height: sizes!.heightRatio * 32,
                  width: sizes!.widthRatio * 32,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getDrawerMenuText13(
                      "Profile", Assets.poppinsMedium,
                      color: AppColors.blackTextColor, lines: 1),
                ),
                leading: Image.asset(
                  "assets/png/profile_icon@2x.png",
                  height: sizes!.heightRatio * 32,
                  width: sizes!.widthRatio * 32,
                ),
                onTap: () {
                  // Navigator.pop(context);
                  Navigator.push(
                      context, SlideRightRoute(page: const ProfileScreen()));
                },
              ),
              const Divider(),
              TextView.getDrawerMenuText13("V: 1.0.0", Assets.poppinsMedium,
                  color: AppColors.getStartedButtonColor, lines: 1)
            ],
          ),
        ),
        body: Container(
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
                  zoomGesturesEnabled: true,
                  markers: _markers,
                  zoomControlsEnabled: false,
                  onMapCreated: (GoogleMapController controller) {
                    mapController = controller;
                    // welcomeBackPopUp(context);
                  },
                )),
                Positioned(
                  top: sizes!.heightRatio * 30.0,
                  left: sizes!.widthRatio * 31.0,
                  // right: sizes!.pagePadding,
                  child: CommonWidgets.customMenuButton(
                      context: context,
                      onPress: () {
                        scaffoldKey.currentState?.openDrawer();
                      }),
                ),
                Positioned(
                    bottom: sizes!.heightRatio * 65.0,
                    left: sizes!.widthRatio * 80.0,
                    right: sizes!.widthRatio * 80,
                    child: Container(
                      height: 45.0,
                      width: 216.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: AppColors.whiteTextColor,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          welcomeBackPopUp(context);
                        },
                        child: Center(
                          child: TextView.getRegular13Text(
                              "Searching for User", Assets.poppinsMedium,
                              color: AppColors.pass, lines: 1),
                        ),
                      ),
                    )),
              ],
            )),
      ),
    );
  }

  void welcomeBackPopUp(context) {
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
              child: PopUpComponents.welcomeBackScreenCustomPopUp(
            context,
          ));
        });
  }
}
