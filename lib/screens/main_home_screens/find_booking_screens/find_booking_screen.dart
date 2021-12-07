import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/network_manager/NotificationHandler.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/en_route_screens/en_route_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_provider.dart';
import 'package:quick_tow_trucker/widgets/common_drawer_bar.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class FindBookingScreen extends StatefulWidget {
  const FindBookingScreen({Key? key}) : super(key: key);

  @override
  _FindBookingScreenState createState() => _FindBookingScreenState();
}

class _FindBookingScreenState extends State<FindBookingScreen> {
  late FindBookingProvider findBookingProvider;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final String _userId = PreferenceUtils.getString(Strings.loginUserId) ?? "";

  @override
  void initState() {
    super.initState();

    findBookingProvider = FindBookingProvider();
    findBookingProvider =
        Provider.of<FindBookingProvider>(context, listen: false);
    findBookingProvider.init(context: context);

    // On Message
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Toasts.getSuccessToast(text: "Hey there, Notification onMessage");
      NotificationHandler.handleNotification(message.data, context);
    });
    // On Message Opened App
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Toasts.getSuccessToast(
          text: "Hey there, Notification onMessageOpenedApp");
      NotificationHandler.handleNotification(message.data, context);
    });

    debugPrint("_userID: $_userId");

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      settingPopUp(context);
      findBookingProvider.getAllBookingList().then((_) {
        getLatestBooking(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<FindBookingProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer:
            CommonDrawerBar.getDrawerBar(context: context, isCurrentScreen: 1),
        body: Container(
            height: sizes!.height,
            width: sizes!.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.mainBookingBGImage),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                CommonWidgets.getAppBarWithTitleAndBackButton(
                    context: context,
                    title: "Booking",
                    icon: "assets/png/menu_icon@2x.png",
                    onPress: () {
                      scaffoldKey.currentState?.openDrawer();
                    }),
                SizedBox(
                  height: sizes!.heightRatio * 62.0,
                ),
                findBookingProvider.isBookingListLoaded == true
                    ? TextView.getTextWith24(
                        "New Request Available!", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1)
                    : TextView.getTextWith24(
                        "No New Request!", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                SizedBox(
                  height: sizes!.heightRatio * 6.0,
                ),
                findBookingProvider.isBookingListLoaded == true
                    ? TextView.getMediumText14("Pick Up", Assets.poppinsRegular,
                        color: AppColors.officeDetailText,
                        fontWeight: FontWeight.normal,
                        lines: 1)
                    : TextView.getMediumText14(
                        "We Will Notify You Soon.", Assets.poppinsRegular,
                        color: AppColors.officeDetailText,
                        fontWeight: FontWeight.normal,
                        lines: 1),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: sizes!.heightRatio * 90.0),
                  child: GestureDetector(
                    onTap: () {
                      getLatestBooking(context);
                    },
                    child: Container(
                      height: 43.0,
                      width: 216.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: AppColors.whiteTextColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.bookingContainerColor,
                            blurRadius: 0.5,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: TextView.getRegularBoldWith13(
                            "Get Booking", Assets.poppinsMedium,
                            color: AppColors.pass, lines: 1),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void getLatestBooking(context) {
    getAvailableBookingPopUp(context,
        userName:
            "${findBookingProvider.getAllBookingListResponse.data![0].userFirstName} ${findBookingProvider.getAllBookingListResponse.data![0].userLastName}",
        rating: findBookingProvider.getAllBookingListResponse.data![0].ratings
            .toString(),
        requestType: findBookingProvider
            .getAllBookingListResponse.data![0].serviceTypesTitle,
        make:
            findBookingProvider.getAllBookingListResponse.data![0].vehicleMake,
        model:
            findBookingProvider.getAllBookingListResponse.data![0].vehicleModel,
        plateNumber: findBookingProvider
            .getAllBookingListResponse.data![0].vehicleLicensePlateNumber,
        category: findBookingProvider
            .getAllBookingListResponse.data![0].vehicleTransmissionTypeId,
        additionalNote: findBookingProvider.getAllBookingListResponse.data![0]
            .vehicleAddtionalNotes, onDeclinePress: () {
      rejectBooking();
    }, onAcceptPress: () {
      acceptBooking();
    });
  }

  void getAvailableBookingPopUp(
    context, {
    @required String? userName,
    @required dynamic rating,
    @required String? requestType,
    @required String? make,
    @required String? model,
    @required String? plateNumber,
    @required String? category,
    @required String? additionalNote,
    @required Function? onDeclinePress,
    @required Function? onAcceptPress,
  }) {
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
              child: PopUpComponents.getBookingUpdatedPopUp(context,
                  userName: userName,
                  rating: rating,
                  requestType: requestType,
                  make: make,
                  model: model,
                  plateNumber: plateNumber,
                  category: category,
                  onAcceptPress: onAcceptPress,
                  onDeclinePress: onDeclinePress,
                  additionalNote: additionalNote));
        });
  }

  void acceptBooking() async {
    await findBookingProvider.acceptBookingRequest(
        truckerUserID: _userId,
        requestId:
            findBookingProvider.getAllBookingListResponse.data![0].requestId,
        requestStatusId: 1);

    if (findBookingProvider.isBookingAccepted == true) {
      Toasts.getSuccessToast(text: "Booking Accepted.");
      Navigator.pop(context);
      Navigator.push(context, SlideRightRoute(page: const EnRouteScreen()));
    }
  }

  void rejectBooking() async {
    await findBookingProvider.rejectBookingRequest(
        truckerUserID: _userId,
        requestId:
            findBookingProvider.getAllBookingListResponse.data![0].requestId,
        requestStatusId: 1);

    if (findBookingProvider.isBookingRejected == true) {
      Toasts.getWarningToast(text: "Booking Rejected.");
      Navigator.pop(context);
    }
  }

  void settingPopUp(context) {
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
