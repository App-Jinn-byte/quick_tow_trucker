import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/PopUps/pop_up_components.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/add_service_screens/add_service_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/rating_review_screens/rating_review_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class PaymentTotalScreen extends StatefulWidget {
  const PaymentTotalScreen({Key? key}) : super(key: key);

  @override
  _PaymentTotalScreenState createState() => _PaymentTotalScreenState();
}

class _PaymentTotalScreenState extends State<PaymentTotalScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImageWithLogoOnTop),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              CommonWidgets.getAppBarWithoutContainerTitleAndBackButton(
                  context: context,
                  title: "",
                  icon: "assets/png/back_btn_icon@2x.png",
                  onPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getTextWith24(
                      "Payment Receipt", Assets.poppinsMedium,
                      color: AppColors.blackTextColor, lines: 1),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              TextView.getMediumText18("Ride Earning", Assets.poppinsMedium,
                  color: AppColors.blackTextColor, lines: 1),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              TextView.getTextWith24("\$ 44.0", Assets.poppinsMedium,
                  color: AppColors.getStartedButtonColor, lines: 1),
              SizedBox(
                height: sizes!.heightRatio * 26.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextView.getRegularText(
                        "Ride Request Date & Time :", Assets.poppinsLight,
                        color: AppColors.blackTextColor, lines: 1),
                    TextView.getRegularText(
                        "17-01-2021 - 16:43", Assets.poppinsMedium,
                        color: AppColors.subHeadingTextColor, lines: 1)
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Container(
                    // margin: EdgeInsets.only(top: sizes!.heightRatio * 10.0),
                    //   padding: EdgeInsets.only(
                    //       top: sizes!.widthRatio * 8,
                    //       bottom: sizes!.widthRatio * 8),
                    width: sizes!.widthRatio * 325,
                    height: sizes!.heightRatio * 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.textFieldBorderColor,
                        //AppColors.textFieldBorderColor,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.whiteTextColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.smallButtonShadow,
                          blurRadius: 18,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Stack(children: [
                      Positioned(
                        top: sizes!.heightRatio * 15.0,
                        left: sizes!.widthRatio * 15.0,
                        right: sizes!.widthRatio * 15.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView.getRegular13TextHeavy(
                                "Vehicle Tow", Assets.poppinsMedium,
                                color: AppColors.pass, lines: 1),
                            TextView.getRegular13TextHeavy(
                                "\$ 40.0", Assets.poppinsMedium,
                                color: AppColors.getStartedButtonColor,
                                lines: 1),
                          ],
                        ),
                      ),
                      Positioned(
                          top: sizes!.heightRatio * -0.0,
                          right: sizes!.widthRatio * -0.0,
                          child:
                              Image.asset("assets/png/cancel_new_icon@3x.png")),
                    ])),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Container(
                    width: sizes!.widthRatio * 325,
                    height: sizes!.heightRatio * 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.textFieldBorderColor,
                        //AppColors.textFieldBorderColor,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.whiteTextColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.smallButtonShadow,
                          blurRadius: 18,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Stack(children: [
                      Positioned(
                        top: sizes!.heightRatio * 15.0,
                        left: sizes!.widthRatio * 15.0,
                        right: sizes!.widthRatio * 15.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView.getRegular13TextHeavy(
                                "Tire Change", Assets.poppinsMedium,
                                color: AppColors.pass, lines: 1),
                            TextView.getRegular13TextHeavy(
                                "\$ 40.0", Assets.poppinsMedium,
                                color: AppColors.getStartedButtonColor,
                                lines: 1),
                          ],
                        ),
                      ),
                      Positioned(
                          top: sizes!.heightRatio * -0.0,
                          right: sizes!.widthRatio * -0.0,
                          child:
                              Image.asset("assets/png/cancel_new_icon@3x.png")),
                      Positioned(
                        top: sizes!.heightRatio * 30.0,
                        left: sizes!.widthRatio * 15.0,
                        right: sizes!.widthRatio * 15.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: sizes!.heightRatio * 5.0,
                            ),
                            TextView.getSmallText12(
                                "Spare Tire Available", Assets.poppinsLight,
                                color: AppColors.subHeadingTextColor, lines: 1),
                            SizedBox(
                              height: sizes!.heightRatio * 5.0,
                            ),
                            TextView.getSmallText12(
                                "Keys available", Assets.poppinsLight,
                                color: AppColors.subHeadingTextColor, lines: 1)
                          ],
                        ),
                      )
                    ])),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Container(
                    width: sizes!.widthRatio * 325,
                    height: sizes!.heightRatio * 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.textFieldBorderColor,
                        //AppColors.textFieldBorderColor,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.whiteTextColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.smallButtonShadow,
                          blurRadius: 18,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Stack(children: [
                      Positioned(
                        top: sizes!.heightRatio * 15.0,
                        left: sizes!.widthRatio * 15.0,
                        right: sizes!.widthRatio * 15.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView.getRegular13TextHeavy(
                                "Fuel Delivery", Assets.poppinsMedium,
                                color: AppColors.pass, lines: 1),
                            TextView.getRegular13TextHeavy(
                                "\$ 122.0", Assets.poppinsMedium,
                                color: AppColors.getStartedButtonColor,
                                lines: 1),
                          ],
                        ),
                      ),
                      Positioned(
                          top: sizes!.heightRatio * -0.0,
                          right: sizes!.widthRatio * -0.0,
                          child:
                              Image.asset("assets/png/cancel_new_icon@3x.png")),
                      Positioned(
                        top: sizes!.heightRatio * 30.0,
                        left: sizes!.widthRatio * 15.0,
                        right: sizes!.widthRatio * 15.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: sizes!.heightRatio * 5.0,
                            ),
                            TextView.getSmallText12(
                                "2 Liters", Assets.poppinsLight,
                                color: AppColors.subHeadingTextColor, lines: 1),
                          ],
                        ),
                      )
                    ])),
              ),
              SizedBox(
                height: sizes!.heightRatio * 24.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13TextHeavy(
                        "Add Service", Assets.poppinsMedium,
                        color: AppColors.pass, lines: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const AddServiceScreen()));
                      },
                      child: Image.asset(
                        "assets/png/add_car_icon@2x.png",
                        height: sizes!.heightRatio * 23.0,
                        width: sizes!.widthRatio * 23.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 40.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: CommonWidgets.getStartButton("Mark As Complete",
                    onPress: () {
                  completeRideAlert(context);
                }),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void completeRideAlert(context) {
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
              child: PopUpComponents.completeRidePopUp(context,
                  confirmOnPress: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
                context, SlideRightRoute(page: const RatingReviewScreen()));
            //  TODO: Please double-check pushReplacement
          }));
        });
  }
}
