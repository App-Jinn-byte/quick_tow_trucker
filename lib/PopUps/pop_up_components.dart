import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/enums.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/en_route_screens/en_route_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class PopUpComponents {
  static Widget completeRidePopUp(BuildContext context,
      {@required Function? confirmOnPress}) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            SizedBox(
              height: sizes!.heightRatio * 320,
              width: sizes!.widthRatio * 322,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/png/popup_header@3x.png",
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 24.0,
                  ),
                  TextView.getWelcomeTextWith28(
                      'Completed!', Assets.poppinsMedium,
                      color: AppColors.blackTextColor, lines: 1),
                  SizedBox(
                    height: sizes!.heightRatio * 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizes!.widthRatio * 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getMediumText16(
                          "Your Ride has been Completed successfully.",
                          Assets.poppinsMedium,
                          color: AppColors.blackTextColor,
                          textAlign: TextAlign.center,
                          lines: 2),
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 20.0,
                        right: sizes!.widthRatio * 20.0),
                    child: CommonWidgets.getStartButton("OK", onPress: () {
                      if (confirmOnPress != null) {
                        confirmOnPress.call();
                      }
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
    selectYourStatus? _character = selectYourStatus.active;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: StatefulBuilder(
          builder: (context, setState) {
            return Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                Container(
                  height: sizes!.heightRatio * 500, //488
                  width: sizes!.widthRatio * 326,
                  padding: EdgeInsets.only(
                      left: sizes!.pagePadding,
                      right: sizes!.pagePadding,
                      top: sizes!.pagePadding * 2.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sizes!.heightRatio * 15.0,
                      ),
                      TextView.getWelcomeTextWith28(
                          'SET YOUR STATUS!', Assets.poppinsMedium,
                          color: AppColors.blackTextColor, lines: 1),
                      SizedBox(
                        height: sizes!.heightRatio * 5.0,
                      ),
                      TextView.getSmallText(
                          "The Welcome That Likes To Say Yes.",
                          Assets.poppinsRegular,
                          color: AppColors.blackTextColor,
                          lines: 1,
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: sizes!.heightRatio * 30.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: sizes!.widthRatio * 12.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextView.getMediumText18(
                            "Select Your Truck",
                            Assets.poppinsMedium,
                            color: AppColors.openTheTruckerAppTextColor,
                            lines: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sizes!.heightRatio * 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CommonWidgets.getPopUpButton("FWD Only",
                              onPress: () {}),
                          CommonWidgets.getPopUpButtonWithBlackTextColor(
                            "All Vehicles",
                            buttonColor: AppColors.whiteTextColor,
                            onPress: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sizes!.heightRatio * 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: sizes!.widthRatio * 15.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextView.getMediumText18(
                              "Select Your Status", Assets.poppinsMedium,
                              color: AppColors.openTheTruckerAppTextColor,
                              lines: 1),
                        ),
                      ),
                      SizedBox(
                        height: sizes!.heightRatio * 16.0,
                      ),
                      Row(
                        children: [
                          Radio<selectYourStatus>(
                            value: selectYourStatus.active,
                            groupValue: _character,
                            activeColor: AppColors.getStartedButtonColor,
                            onChanged: (selectYourStatus? value) {
                              setState(() {
                                _character = value;
                                print("isActiveStatus: $_character");
                              });
                            },
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
                          Radio<selectYourStatus>(
                            value: selectYourStatus.onbreak,
                            activeColor: AppColors.getStartedButtonColor,
                            groupValue: _character,
                            onChanged: (value) {
                              setState(() {
                                _character = value;
                                print("In-Progress: $_character");
                              });
                            },
                          ),
                          TextView.getSubHeadingTextWith15(
                              "In-Progress", Assets.poppinsRegular,
                              color: AppColors.radioButtonTextColor,
                              lines: 1,
                              fontWeight: FontWeight.normal)
                        ],
                      ),
                      Row(
                        children: [
                          Radio<selectYourStatus>(
                            value: selectYourStatus.offduty,
                            activeColor: AppColors.getStartedButtonColor,
                            groupValue: _character,
                            onChanged: (value) {
                              setState(() {
                                _character = value;
                                print("Off-Duty: $_character");
                              });
                            },
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
            );
          },
        ),
      ),
    );
  }

  static Widget getBookingPopUp(BuildContext context) {
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
              height: sizes!.heightRatio * 600,
              width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/png/avatar_user_icon@2x.png",
                          height: sizes!.heightRatio * 42.0,
                          width: sizes!.widthRatio * 42.0,
                        ),
                        SizedBox(
                          width: sizes!.widthRatio * 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getSubHeadingTextWith15(
                                "John Doe", Assets.poppinsMedium,
                                color: AppColors.blackTextColor,
                                lines: 1,
                                fontWeight: FontWeight.normal),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/png/star_icon@2x.png",
                                  height: sizes!.heightRatio * 15.0,
                                  width: sizes!.widthRatio * 14.0,
                                ),
                                SizedBox(
                                  width: sizes!.widthRatio * 5.0,
                                ),
                                TextView.getRegularText(
                                    "5.00", Assets.poppinsLight,
                                    color: AppColors.blackTextColor, lines: 1)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: sizes!.widthRatio * 65.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getRegularText(
                                "Total Price", Assets.poppinsRegular,
                                color: AppColors.subHeadingTextColor, lines: 1),
                            TextView.getMediumText16(
                                "\$ 234.45", Assets.poppinsMedium,
                                color: AppColors.blackTextColor,
                                lines: 1,
                                fontWeight: FontWeight.bold),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 10.0,
                  ),
                  Image.asset("assets/png/Line.png"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12("You", Assets.poppinsMedium,
                            color: AppColors.getStartedButtonColor, lines: 1),
                        TextView.getSmallText12("Pick-up", Assets.poppinsMedium,
                            color: AppColors.subHeadingTextColor, lines: 1)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizes!.widthRatio * 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getSubHeadingTextWith15(
                          "Vehicle Information", Assets.poppinsMedium,
                          color: AppColors.openTheTruckerAppTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Vehicle Name", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getSmallText12(
                            "Vehicle Name", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12("Honda", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                        TextView.getSmallText12(
                            "Civic - X", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Vehicle Number", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getSmallText12(
                            "Vehicle Category", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12("LEU-7652", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                        TextView.getSmallText12("4 wheel", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizes!.widthRatio * 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getSubHeadingTextWith15(
                          "Road - side services", Assets.poppinsMedium,
                          color: AppColors.openTheTruckerAppTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Flat tyre replacement", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getMediumText16("\$ 32", Assets.poppinsMedium,
                            color: AppColors.popUpTextColor,
                            lines: 1,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 2.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: TextView.getSmallText12(
                        "Keys available", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 2.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: TextView.getSmallText12(
                        "Spare Tyre Available", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Fuel deliveries", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getMediumText16("\$ 42", Assets.poppinsMedium,
                            color: AppColors.popUpTextColor,
                            lines: 1,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 2.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: TextView.getSmallText12(
                        "2 Liters", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                  Container(
                    width: sizes!.widthRatio * 285,
                    height: sizes!.heightRatio * 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.getStartedButtonColor,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.whiteTextColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.getStartedButtonColorShadow,
                          blurRadius: 1, // 12
                          offset: Offset(0, 0), // 3
                        ),
                      ],
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: TextView.getSmallText12(
                            "Hello, I have problem with the front right wheel. "
                            "Hello, I have problem with the front right wheel. "
                            "Hello, I have problem with the front right wheel. "
                            "Hello, I have problem with the front right wheel. "
                            "Hello, I have problem with the front right wheel. "
                            "Hello, I have problem with the front right wheel.",
                            Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor,
                            lines: 5),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopUpComponents.getCustomOutlineBtn("Decline",
                          onPress: () {
                        Navigator.pop(context);
                      }),
                      PopUpComponents.getPopUpButton("Accept", onPress: () {
                        Navigator.pop(context);

                        Navigator.push(context,
                            SlideRightRoute(page: const EnRouteScreen()));
                      })
                    ],
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget getBookingUpdatedPopUp(
    BuildContext context, {
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
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              height: sizes!.heightRatio * 450, //600
              width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/png/avatar_user_icon@2x.png",
                          height: sizes!.heightRatio * 42.0,
                          width: sizes!.widthRatio * 42.0,
                        ),
                        SizedBox(
                          width: sizes!.widthRatio * 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: sizes!.heightRatio * 5.0,
                            ),
                            Row(
                              children: [
                                TextView.getSubHeadingTextWith15(
                                    userName ?? "John Doe",
                                    Assets.poppinsMedium,
                                    color: AppColors.blackTextColor,
                                    lines: 1,
                                    fontWeight: FontWeight.normal),
                                SizedBox(
                                  width: sizes!.widthRatio * 5.0,
                                ),
                                Image.asset(
                                  "assets/png/star_icon@2x.png",
                                  height: sizes!.heightRatio * 15.0,
                                  width: sizes!.widthRatio * 14.0,
                                ),
                                SizedBox(
                                  width: sizes!.widthRatio * 2.0,
                                ),
                                TextView.getRegularText(
                                    rating ?? "5.00", Assets.poppinsLight,
                                    color: AppColors.blackTextColor, lines: 1)
                              ],
                            ),
                            SizedBox(
                              height: sizes!.heightRatio * 5.0,
                            ),
                            Container(
                              height: 29.0,
                              width: 99.0,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                color: AppColors.bookingTagContainerColor,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        AppColors.getStartedButtonColorShadow,
                                    blurRadius: 0.5,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: sizes!.widthRatio * 2.0,
                                    right: sizes!.widthRatio * 2.0),
                                child: Center(
                                  child: TextView.getSmallBoldText12(
                                      requestType ?? "Tow Request",
                                      Assets.poppinsMedium,
                                      color: AppColors.whiteTextColor,
                                      lines: 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: sizes!.widthRatio * 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getRegularText(
                                "Total Price", Assets.poppinsRegular,
                                color: AppColors.subHeadingTextColor, lines: 1),
                            SizedBox(
                              height: sizes!.heightRatio * 5.0,
                            ),
                            TextView.getMediumText16(
                                "\$ 234.45", Assets.poppinsMedium,
                                color: AppColors.blackTextColor,
                                lines: 1,
                                fontWeight: FontWeight.bold),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: sizes!.widthRatio * 10.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextView.getSmallText11(
                          "7 Min", Assets.poppinsLight,
                          color: AppColors.subHeadingTextColor, lines: 1),
                    ),
                  ),
                  Image.asset("assets/png/Line.png"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12("You", Assets.poppinsMedium,
                            color: AppColors.getStartedButtonColor, lines: 1),
                        TextView.getSmallText12("Pick-up", Assets.poppinsMedium,
                            color: AppColors.subHeadingTextColor, lines: 1)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizes!.widthRatio * 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getSubHeadingTextWith15(
                          "Vehicle Information", Assets.poppinsMedium,
                          color: AppColors.openTheTruckerAppTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Vehicle Name", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getSmallText12(
                            "Vehicle Model", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            make ?? "Honda", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                        TextView.getSmallText12(
                            model ?? "Civic - X", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Vehicle Number", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getSmallText12(
                            "Vehicle Category", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            plateNumber ?? "LEU-7652", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                        TextView.getSmallText12(
                            category ?? "4 wheel", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                  Container(
                    width: sizes!.widthRatio * 285,
                    height: sizes!.heightRatio * 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.getStartedButtonColor,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.whiteTextColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.getStartedButtonColorShadow,
                          blurRadius: 1, // 12
                          offset: Offset(0, 0), // 3
                        ),
                      ],
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: TextView.getSmallText12(
                            additionalNote ?? "Nothing!", Assets.poppinsLight,
                            color: AppColors.subHeadingTextColor, lines: 5),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 14.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopUpComponents.getCustomOutlineBtn("Decline",
                          onPress: () {
                        if (onDeclinePress != null) {
                          onDeclinePress.call();
                        }
                      }),
                      PopUpComponents.getPopUpButton("Accept", onPress: () {
                        if (onAcceptPress != null) {
                          onAcceptPress.call();
                        }
                      })
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget getViewDetailPopUp(BuildContext context) {
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
              height: sizes!.heightRatio * 369, //369
              width: sizes!.widthRatio * 326,
              padding: EdgeInsets.only(
                  left: sizes!.pagePadding,
                  right: sizes!.pagePadding,
                  top: sizes!.pagePadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/png/avatar_user_icon@2x.png",
                          height: sizes!.heightRatio * 42.0,
                          width: sizes!.widthRatio * 42.0,
                        ),
                        SizedBox(
                          width: sizes!.widthRatio * 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getSubHeadingTextWith15(
                                "John Doe", Assets.poppinsMedium,
                                color: AppColors.blackTextColor,
                                lines: 1,
                                fontWeight: FontWeight.normal),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/png/star_icon@2x.png",
                                  height: sizes!.heightRatio * 15.0,
                                  width: sizes!.widthRatio * 14.0,
                                ),
                                SizedBox(
                                  width: sizes!.widthRatio * 5.0,
                                ),
                                TextView.getRegularText(
                                    "5.00", Assets.poppinsLight,
                                    color: AppColors.blackTextColor, lines: 1)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: sizes!.widthRatio * 65.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getRegularText(
                                "Total Price", Assets.poppinsRegular,
                                color: AppColors.subHeadingTextColor, lines: 1),
                            TextView.getMediumText16(
                                "\$ 234.45", Assets.poppinsMedium,
                                color: AppColors.blackTextColor,
                                lines: 1,
                                fontWeight: FontWeight.bold),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizes!.widthRatio * 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getSubHeadingTextWith15(
                          "Road - side services", Assets.poppinsMedium,
                          color: AppColors.openTheTruckerAppTextColor,
                          lines: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Tire Change", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getMediumText16("\$ 32", Assets.poppinsMedium,
                            color: AppColors.popUpTextColor,
                            lines: 1,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 2.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: TextView.getSmallText12(
                        "Spare Tyre Available", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 2.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: TextView.getSmallText12(
                        "Keys available", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: const Divider(),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView.getSmallText12(
                            "Fuel Deliveries", Assets.poppinsMedium,
                            color: AppColors.blackTextColor, lines: 1),
                        TextView.getMediumText16("\$ 42", Assets.poppinsMedium,
                            color: AppColors.popUpTextColor,
                            lines: 1,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 2.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 5.0,
                        right: sizes!.widthRatio * 5.0),
                    child: TextView.getSmallText12(
                        "2 Liters", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
                  ),
                  SizedBox(
                    height: sizes!.heightRatio * 35.0,
                  ),
                  CommonWidgets.getStartButton("Continue", onPress: () {
                    Navigator.pop(context);
                  }),
                  SizedBox(
                    height: sizes!.heightRatio * 35.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget getPopUpButton(
    String text, {
    Function? onPress,
    Color? buttonColor,
  }) {
    return Container(
      width: sizes!.widthRatio * 120,
      height: sizes!.heightRatio * 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: buttonColor ?? AppColors.getStartedButtonColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        color: buttonColor ?? AppColors.getStartedButtonColor,
        boxShadow: const [
          BoxShadow(
            color: AppColors.getStartedButtonColorShadow,
            blurRadius: 4, // 12
            offset: Offset(0, 1), // 3
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          if (onPress != null) {
            onPress.call();
          }
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: Assets.poppinsMedium,
          ),
        ),
      ),
    );
  }

  static Widget getCustomOutlineBtn(
    String text, {
    Function? onPress,
    Color? buttonColor,
  }) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress.call();
        }
      },
      child: Container(
          width: sizes!.widthRatio * 120,
          height: sizes!.heightRatio * 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.redColor,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            color: AppColors.whiteTextColor,
            boxShadow: const [
              BoxShadow(
                color: AppColors.getStartedButtonColorShadow,
                blurRadius: 4, // 12
                offset: Offset(0, 0), // 3
              ),
            ],
          ),
          child: Center(
            child: TextView.getRegularBoldText(text, Assets.poppinsMedium,
                color: AppColors.redColor, lines: 1),
          )),
    );
  }
}
