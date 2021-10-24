import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/main_home_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class PopUpComponents {
  static Widget privacyPolicyCustomDialog(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: sizes!.height * 0.70,
              width: sizes!.widthRatio * 326,
              // padding: EdgeInsets.only(
              //     left: sizes!.pagePadding, right: sizes!.pagePadding,
              //     top: sizes!.heightRatio * 50, bottom: sizes!.pagePadding),
              child: Column(
                children: [
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: sizes!.pagePadding,
                      right: sizes!.pagePadding,
                      top: sizes!.heightRatio * 50,
                    ),
                    child: TextView.getLargeText(
                        'Please review user data and policy',
                        Assets.latoRegular,
                        color: AppColors.blackTextColor,
                        lines: 2),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 20,
                  ),

                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
                    child: TextView.getSmallText(
                        Strings.privacyPolicyTextLong, Assets.latoRegular,
                        color: AppColors.blackTextColor, lines: 8),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 20,
                  ),

                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'For more information see our ',
                            style: TextStyle(
                                fontFamily: Assets.latoRegular,
                                color: AppColors.blackTextColor)),
                        TextSpan(
                            text: 'Privacy Policy ',
                            style: TextStyle(
                                fontFamily: Assets.latoRegular,
                                color: AppColors.blueHomeColor)),
                        TextSpan(
                            text: 'and ',
                            style: TextStyle(
                                fontFamily: Assets.latoRegular,
                                color: AppColors.blackTextColor)),
                        TextSpan(
                            text: 'Term of use',
                            style: TextStyle(
                                fontFamily: Assets.latoRegular,
                                color: AppColors.blueHomeColor)),
                      ]),
                    ),
                  ),
                  //Center(child: TextView.getSmallText(Strings.privacyPolicybottomText, Assets.latoRegular, color: AppColors.blackTextColor, lines: 8)),
                  SizedBox(
                    height: sizes!.heightRatio * 30,
                  ),
                  CommonWidgets.customCheckbox(true),
                  SizedBox(
                    height: sizes!.height * 0.02,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
                    child: CommonWidgets.mainButton('Ok', onpress: () {
                      Navigator.pop(context);
                    }),
                  )
                ],
              ),
            ),
            Positioned(
                child: Container(
                  height: sizes!.heightRatio * 80,
                  child: const Image(
                    image: AssetImage(Assets.privacyPolicyIcon),
                  ),
                ),
                top: sizes!.heightRatio * -35,
                right: sizes!.width * 0.28)
          ],
        ),
      ),
    );
  }

  static Widget checkInCustomDialog(BuildContext context,
      {@required Function? onPress}) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              height: sizes!.height * 0.40,
              width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 3),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  TextView.getLargeText('Premium Check-ins.', Assets.latoBlack,
                      color: AppColors.blackTextColor, lines: 2),
                  SizedBox(
                    height: sizes!.heightRatio * 20,
                  ),

                  const Text(
                    Strings.checkInPopUpText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Assets.latoRegular,
                    ),
                  ),
                  //TextView.getSmallText(Strings.checkInPopUpText, Assets.latoRegular, color: AppColors.blackTextColor, lines: 8),

                  SizedBox(
                    height: sizes!.height * 0.06,
                  ),

                  CommonWidgets.mainButton('Upgrade', onpress: () => onPress!())
                ],
              ),
            ),
            Positioned(
                child: Container(
                  height: sizes!.heightRatio * 80,
                  child: const Image(
                    image: AssetImage(Assets.bookingPopUpIcon),
                  ),
                ),
                top: sizes!.heightRatio * -35,
                right: sizes!.width * 0.27)
          ],
        ),
      ),
    );
  }

  static Widget awesomeCustomDialog(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              height: sizes!.height * 0.40,
              //width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 3),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  TextView.getLargeText('Awesome!', Assets.latoBlack,
                      color: AppColors.blackTextColor, lines: 2),
                  SizedBox(
                    height: sizes!.heightRatio * 20,
                  ),

                  const Text(
                    Strings.awesomePopupText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Assets.latoRegular,
                    ),
                  ),
                  //TextView.getSmallText(Strings.checkInPopUpText, Assets.latoRegular, color: AppColors.blackTextColor, lines: 8),

                  SizedBox(
                    height: sizes!.height * 0.06,
                  ),

                  // CommonWidgets.mainButton('Ok', onpress: () async {
                  //   Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (BuildContext context) =>
                  //           // BottomTab(pageIndex: 4),
                  //     ),
                  //     (route) => false,
                  //   );
                  // })
                ],
              ),
            ),
            Positioned(
                child: Container(
                  height: sizes!.heightRatio * 80,
                  child: const Image(
                    image: AssetImage(Assets.popupCheckImage),
                  ),
                ),
                top: sizes!.heightRatio * -35,
                right: sizes!.width * 0.27)
          ],
        ),
      ),
    );
  }

  static Widget bookingConfirmationCustomDialog(BuildContext context,
      {@required String? bookingLocation,
      @required String? internetPassword,
      @required String? offerWithShortDetail}) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              height: sizes!.height * 0.45,
              width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 3),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  TextView.getLargeText('Awesome!', Assets.latoRegular,
                      color: AppColors.blackTextColor, lines: 2),
                  SizedBox(
                    height: sizes!.heightRatio * 15,
                  ),
                  TextView.getSmallText(
                      "Thank you for check-in ${bookingLocation ?? 'Blue Avenue'}.\n Your payment has successfully done.\n Please check your email for confirmation.",
                      Assets.latoRegular,
                      color: AppColors.blackTextColor,
                      lines: 8,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView.getSmallText(
                            "Internet Password: ", Assets.latoRegular,
                            color: AppColors.darkGreyTextColor, lines: 2),
                        TextView.getSmallText(
                          internetPassword ?? "123456",
                          Assets.latoBold,
                          color: AppColors.blackTextColor,
                          lines: 2,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView.getSmallText("Offer: ", Assets.latoRegular,
                            color: AppColors.darkGreyTextColor, lines: 2),
                        TextView.getSmallText(
                          offerWithShortDetail ??
                              "Save 10% off on first order.",
                          Assets.latoBold,
                          color: AppColors.blackTextColor,
                          lines: 2,
                        )
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) =>
                        //         BottomTab(pageIndex: 2),
                        //   ),
                        //   (route) => false,
                        // );
                      },
                      child: TextView.getRegularText(
                          'Back to Home', Assets.latoRegular,
                          color: AppColors.blueHomeColor, lines: 1)),
                  SizedBox(
                    height: sizes!.height * 0.001,
                  ),
                  CommonWidgets.mainButton(
                    'Go to my bookings',
                    onpress: () {
                      // Navigator.pushReplacement(context,
                      //     SlideRightRoute(page: MyBookings(path: "Booking")));
                    },
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 16,
                  )
                ],
              ),
            ),
            Positioned(
                child: Container(
                  height: sizes!.heightRatio * 80,
                  child: const Image(
                    image: AssetImage(Assets.tickPopUpIcon),
                  ),
                ),
                top: sizes!.heightRatio * -35,
                right: sizes!.width * 0.27)
          ],
        ),
      ),
    );
  }

  static Widget welcomeBackScreenCustomPopUp(BuildContext context) {
    bool _value = true;
    int val = -1;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              height: sizes!.heightRatio * 475,
              width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 3),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  TextView.getWelcomeTextWith28(
                      'Welcome Back!', Assets.poppinsMedium,
                      color: AppColors.blackTextColor, lines: 1),
                  SizedBox(
                    height: sizes!.heightRatio * 5,
                  ),
                  TextView.getSmallText("The Welcome That Likes To Say Yes.",
                      Assets.poppinsRegular,
                      color: AppColors.blackTextColor,
                      lines: 1,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: sizes!.heightRatio * 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizes!.widthRatio * 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getMediumText16(
                          "Select Your Truck", Assets.poppinsMedium,
                          color: AppColors.openTheTruckerAppTextColor,
                          lines: 1),
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidgets.getPopUpButton("FWD Only", onPress: () {}),
                      CommonWidgets.getPopUpButtonWithBlackTextColor(
                        "All Vehicles",
                        buttonColor: AppColors.whiteTextColor,
                        onPress: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 10,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: val,
                        activeColor: AppColors.getStartedButtonColor,
                        onChanged: (value) {},
                      ),
                      TextView.getSubHeadingTextWith15(
                          "Active", Assets.poppinsRegular,
                          color: AppColors.radioButtonTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        activeColor: AppColors.getStartedButtonColor,
                        groupValue: val,
                        onChanged: (value) {},
                      ),
                      TextView.getSubHeadingTextWith15(
                          "On-Break", Assets.poppinsRegular,
                          color: AppColors.radioButtonTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        activeColor: AppColors.getStartedButtonColor,
                        groupValue: val,
                        onChanged: (value) {},
                      ),
                      TextView.getSubHeadingTextWith15(
                          "Off Duty", Assets.poppinsRegular,
                          color: AppColors.radioButtonTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal)
                    ],
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 40,
                  ),
                  CommonWidgets.getStartButton(
                    'Continue',
                    onPress: () {
                      Navigator.pop(context);
                      // Navigator.pushReplacement(context,
                      //     SlideRightRoute(page: const FindBookingScreen()));
                    },
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 16,
                  )
                ],
              ),
            ),

            // Positioned(
            //     child: Container(
            //       height: sizes!.heightRatio * 80,
            //       child: const Image(
            //         image: AssetImage(Assets.tickPopUpIcon),
            //       ),
            //     ),
            //     top: sizes!.heightRatio * -35,
            //     right: sizes!.width * 0.27)
          ],
        ),
      ),
    );
  }
}
