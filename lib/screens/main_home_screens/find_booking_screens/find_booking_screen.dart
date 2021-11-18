import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_drawer_bar.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class FindBookingScreen extends StatefulWidget {
  const FindBookingScreen({Key? key}) : super(key: key);

  @override
  _FindBookingScreenState createState() => _FindBookingScreenState();
}

class _FindBookingScreenState extends State<FindBookingScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

                TextView.getTextWith24("No New Request!", Assets.poppinsMedium,
                    color: AppColors.blackTextColor, lines: 1),
                SizedBox(
                  height: sizes!.heightRatio * 6.0,
                ),

                TextView.getMediumText14(
                    "We Will Notify You Soon.", Assets.poppinsRegular,
                    color: AppColors.officeDetailText,
                    fontWeight: FontWeight.normal,
                    lines: 1),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: sizes!.heightRatio * 90.0),
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
                    child: GestureDetector(
                      onTap: () {
                        getAvailableBookingPopUp(context);
                      },
                      child: Center(
                        child: TextView.getRegularBoldWith13(
                            "Searching for User", Assets.poppinsMedium,
                            color: AppColors.pass, lines: 1),
                      ),
                    ),
                  ),
                ),

                // Expanded(
                //     child: ListView.builder(
                //         itemCount: 10,
                //         itemBuilder: (context, index) {
                //           return Padding(
                //             padding: EdgeInsets.only(
                //                 left: sizes!.widthRatio * 20.0,
                //                 right: sizes!.widthRatio * 20.0,
                //                 top: sizes!.heightRatio * 10.0,
                //                 bottom: sizes!.heightRatio * 10.0),
                //             child: CommonWidgets.getBookingContainer(
                //                 context: context),
                //           );
                //         })),
              ],
            )),
      ),
    );
  }

  static void getAvailableBookingPopUp(context) {
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
              child: PopUpComponents.getBookingUpdatedPopUp(
            context,
          ));
        });
  }
}
