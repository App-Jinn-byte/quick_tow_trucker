import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/payment_total_screens/payment_total_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen({Key? key}) : super(key: key);

  @override
  _AddServiceScreenState createState() => _AddServiceScreenState();
}

class _AddServiceScreenState extends State<AddServiceScreen> {
  bool isTireChange = false;
  bool isLockOutService = false;
  bool isFuelDelivery = false;

  bool isTireChangeDropDownOpened = false;
  bool isLockoutServiceDropDownOpened = false;
  bool isFuelDeliveryDropDownOpened = false;
  bool isWinchOutSelected = false;
  bool isJumpstartSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImage), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonWidgets.getAppBarWithTitleAndBackButton(
                  context: context,
                  title: "Add Service",
                  icon: "assets/png/back_btn_icon@2x.png",
                  onPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: sizes!.heightRatio * 50.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 29.0,
                    right: sizes!.heightRatio * 29.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getMediumText18(
                    "What Do You Need?",
                    Assets.poppinsLight,
                    color: AppColors.openTheTruckerAppTextColor,
                    lines: 1,
                  ),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 35.0,
              ),

              // Container 1
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTireChangeDropDownOpened = !isTireChangeDropDownOpened;
                      print("isDropdownOpened: $isTireChangeDropDownOpened");
                    });
                  },
                  child: Container(
                    height: isTireChangeDropDownOpened
                        ? sizes!.heightRatio * 125.0
                        : sizes!.heightRatio * 58.0,
                    width: sizes!.widthRatio * 335.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: isTireChangeDropDownOpened
                          ? AppColors.getStartedButtonColor
                          : AppColors.homeScreenContainerColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.homeScreenContainerColorShadow,
                          blurRadius: 18,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizes!.heightRatio * 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  isTireChangeDropDownOpened
                                      ? Image.asset(
                                          "assets/png/white_tire_change_icon@3x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        )
                                      : Image.asset(
                                          "assets/png/tire_change_icon@2x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        ),
                                  SizedBox(
                                    width: sizes!.widthRatio * 10.0,
                                  ),
                                  TextView.getRegularBoldWith13(
                                      "Tire Change", Assets.poppinsMedium,
                                      color: isTireChangeDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.pass,
                                      lines: 1),
                                ],
                              ),
                              Row(
                                children: [
                                  TextView.getMediumText16(
                                      "\$ 32", Assets.poppinsMedium,
                                      color: isTireChangeDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.requestTowTextColor,
                                      lines: 1,
                                      fontWeight: FontWeight.bold),
                                  SizedBox(
                                    width: sizes!.widthRatio * 17.3,
                                  ),
                                  isTireChangeDropDownOpened
                                      ? Image.asset(
                                          "assets/png/white_frop_down_icon@3x.png",
                                          height: sizes!.heightRatio * 12.62,
                                          width: sizes!.widthRatio * 16.77,
                                        )
                                      : Image.asset(
                                          "assets/png/drop_down_icon@3x.png",
                                          height: sizes!.heightRatio * 10.62,
                                          width: sizes!.widthRatio * 14.77,
                                        )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: isTireChangeDropDownOpened
                              ? sizes!.heightRatio * 10
                              : sizes!.heightRatio * 0.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: isTireChangeDropDownOpened
                              ? const Divider()
                              : Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: isTireChangeDropDownOpened
                              ? Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Transform.scale(
                                      scale: 1.3,
                                      child: Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor:
                                              isTireChangeDropDownOpened
                                                  ? AppColors.whiteTextColor
                                                  : AppColors
                                                      .subHeadingTextColor,
                                        ),
                                        child: Checkbox(
                                          value: isTireChange,
                                          checkColor: AppColors.whiteTextColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isTireChange = value!;
                                              print(
                                                  "isTireChange: $isTireChange");
                                            });
                                          },
                                          activeColor:
                                              AppColors.checkBoxBorderColor,
                                        ),
                                      ),
                                    ),
                                    TextView.getSmallText12(
                                      "Do you have a spare tire with you?",
                                      Assets.poppinsRegular,
                                      color: isTireChangeDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.requestTowTextColor,
                                      lines: 1,
                                    ),
                                  ],
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              // Container 2
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLockoutServiceDropDownOpened =
                          !isLockoutServiceDropDownOpened;
                      print(
                          "isLockoutServiceDropDownOpened: $isLockoutServiceDropDownOpened");
                    });
                  },
                  child: Container(
                    height: isLockoutServiceDropDownOpened
                        ? sizes!.heightRatio * 125.0
                        : sizes!.heightRatio * 58.0,
                    width: sizes!.widthRatio * 335.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: isLockoutServiceDropDownOpened
                          ? AppColors.getStartedButtonColor
                          : AppColors.homeScreenContainerColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.homeScreenContainerColorShadow,
                          blurRadius: 18,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizes!.heightRatio * 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  isLockoutServiceDropDownOpened
                                      ? Image.asset(
                                          "assets/png/white_lockout_icon@3x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        )
                                      : Image.asset(
                                          "assets/png/lockout_service_icon@2x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        ),
                                  SizedBox(
                                    width: sizes!.widthRatio * 10.0,
                                  ),
                                  TextView.getRegularBoldWith13(
                                      "Lockout Service", Assets.poppinsMedium,
                                      color: isLockoutServiceDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.pass,
                                      lines: 1),
                                ],
                              ),
                              Row(
                                children: [
                                  TextView.getMediumText16(
                                      "\$ 32", Assets.poppinsMedium,
                                      color: isLockoutServiceDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.requestTowTextColor,
                                      lines: 1,
                                      fontWeight: FontWeight.bold),
                                  SizedBox(
                                    width: sizes!.widthRatio * 17.3,
                                  ),
                                  isLockoutServiceDropDownOpened
                                      ? Image.asset(
                                          "assets/png/white_frop_down_icon@3x.png",
                                          height: sizes!.heightRatio * 12.62,
                                          width: sizes!.widthRatio * 16.77,
                                        )
                                      : Image.asset(
                                          "assets/png/drop_down_icon@3x.png",
                                          height: sizes!.heightRatio * 10.62,
                                          width: sizes!.widthRatio * 14.77,
                                        )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: isLockoutServiceDropDownOpened
                              ? sizes!.heightRatio * 10
                              : sizes!.heightRatio * 0.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: isLockoutServiceDropDownOpened
                              ? const Divider()
                              : Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: isLockoutServiceDropDownOpened
                              ? Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Transform.scale(
                                      scale: 1.3,
                                      child: Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor:
                                              isLockoutServiceDropDownOpened
                                                  ? AppColors.whiteTextColor
                                                  : AppColors
                                                      .subHeadingTextColor,
                                        ),
                                        child: Checkbox(
                                          value: isLockOutService,
                                          checkColor: AppColors.whiteTextColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isLockOutService = value!;
                                              print(
                                                  "isLockOutService: $isLockOutService");
                                            });
                                          },
                                          activeColor:
                                              AppColors.checkBoxBorderColor,
                                        ),
                                      ),
                                    ),
                                    TextView.getSmallText12(
                                      "Do you want lock out service?",
                                      Assets.poppinsRegular,
                                      color: isLockoutServiceDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.requestTowTextColor,
                                      lines: 1,
                                    ),
                                  ],
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              // Container 3
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFuelDeliveryDropDownOpened =
                          !isFuelDeliveryDropDownOpened;
                      print(
                          "isFuelDeliveryDropDownOpened: $isFuelDeliveryDropDownOpened");
                    });
                  },
                  child: Container(
                    height: isFuelDeliveryDropDownOpened
                        ? sizes!.heightRatio * 125.0
                        : sizes!.heightRatio * 58.0,
                    width: sizes!.widthRatio * 335.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: isFuelDeliveryDropDownOpened
                          ? AppColors.getStartedButtonColor
                          : AppColors.homeScreenContainerColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.homeScreenContainerColorShadow,
                          blurRadius: 18,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizes!.heightRatio * 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  isFuelDeliveryDropDownOpened
                                      ? Image.asset(
                                          "assets/png/white_fuel_icon@3x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        )
                                      : Image.asset(
                                          "assets/png/fuel_delivery_icon@2x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        ),
                                  SizedBox(
                                    width: sizes!.widthRatio * 10.0,
                                  ),
                                  TextView.getRegularBoldWith13(
                                      "Fuel Delivery", Assets.poppinsMedium,
                                      color: isFuelDeliveryDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.pass,
                                      lines: 1),
                                ],
                              ),
                              Row(
                                children: [
                                  TextView.getMediumText16(
                                      "\$ 32", Assets.poppinsMedium,
                                      color: isFuelDeliveryDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.requestTowTextColor,
                                      lines: 1,
                                      fontWeight: FontWeight.bold),
                                  SizedBox(
                                    width: sizes!.widthRatio * 17.3,
                                  ),
                                  isFuelDeliveryDropDownOpened
                                      ? Image.asset(
                                          "assets/png/white_frop_down_icon@3x.png",
                                          height: sizes!.heightRatio * 12.62,
                                          width: sizes!.widthRatio * 16.77,
                                        )
                                      : Image.asset(
                                          "assets/png/drop_down_icon@3x.png",
                                          height: sizes!.heightRatio * 10.62,
                                          width: sizes!.widthRatio * 14.77,
                                        )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: isFuelDeliveryDropDownOpened
                              ? sizes!.heightRatio * 10
                              : sizes!.heightRatio * 0.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: isFuelDeliveryDropDownOpened
                              ? const Divider()
                              : Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: isFuelDeliveryDropDownOpened
                              ? Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Transform.scale(
                                      scale: 1.3,
                                      child: Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor:
                                              isFuelDeliveryDropDownOpened
                                                  ? AppColors.whiteTextColor
                                                  : AppColors
                                                      .subHeadingTextColor,
                                        ),
                                        child: Checkbox(
                                          value: isFuelDelivery,
                                          checkColor: AppColors.whiteTextColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isFuelDelivery = value!;
                                              print(
                                                  "isFuelDelivery: $isFuelDelivery");
                                            });
                                          },
                                          activeColor:
                                              AppColors.checkBoxBorderColor,
                                        ),
                                      ),
                                    ),
                                    TextView.getSmallText12(
                                      "Do you have Fuel?",
                                      Assets.poppinsRegular,
                                      color: isFuelDeliveryDropDownOpened
                                          ? AppColors.whiteTextColor
                                          : AppColors.requestTowTextColor,
                                      lines: 1,
                                    ),
                                  ],
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              // Container 4
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isWinchOutSelected = !isWinchOutSelected;
                      print("isWinchOutSelected: $isWinchOutSelected");
                    });
                  },
                  child: Container(
                    height: sizes!.heightRatio * 58.0,
                    width: sizes!.widthRatio * 335.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: isWinchOutSelected
                          ? AppColors.getStartedButtonColor
                          : AppColors.homeScreenContainerColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.homeScreenContainerColorShadow,
                          blurRadius: 18,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizes!.heightRatio * 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  isWinchOutSelected
                                      ? Image.asset(
                                          "assets/png/white_winch_out_icon@3x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        )
                                      : Image.asset(
                                          "assets/png/winch_out_icon@2x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        ),
                                  SizedBox(
                                    width: sizes!.widthRatio * 10.0,
                                  ),
                                  TextView.getRegularBoldWith13(
                                      "Winch Out", Assets.poppinsMedium,
                                      color: isWinchOutSelected
                                          ? AppColors.whiteTextColor
                                          : AppColors.pass,
                                      lines: 1),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: sizes!.widthRatio * 32.0),
                                child: TextView.getMediumText16(
                                    "\$ 74", Assets.poppinsMedium,
                                    color: isWinchOutSelected
                                        ? AppColors.whiteTextColor
                                        : AppColors.requestTowTextColor,
                                    lines: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              // Container 5
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isJumpstartSelected = !isJumpstartSelected;
                      print("isJumpstartSelected: $isJumpstartSelected");
                    });
                  },
                  child: Container(
                    height: sizes!.heightRatio * 58.0,
                    width: sizes!.widthRatio * 335.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: isJumpstartSelected
                          ? AppColors.getStartedButtonColor
                          : AppColors.homeScreenContainerColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.homeScreenContainerColorShadow,
                          blurRadius: 18,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizes!.heightRatio * 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: sizes!.widthRatio * 16.0,
                              right: sizes!.widthRatio * 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  isJumpstartSelected
                                      ? Image.asset(
                                          "assets/png/white_jumpstart_icon@3x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        )
                                      : Image.asset(
                                          "assets/png/jumpstart_icon@2x.png",
                                          height: sizes!.heightRatio * 35.0,
                                          width: sizes!.widthRatio * 35.0,
                                        ),
                                  SizedBox(
                                    width: sizes!.widthRatio * 10.0,
                                  ),
                                  TextView.getRegularBoldWith13(
                                      "Jumpstart", Assets.poppinsMedium,
                                      color: isJumpstartSelected
                                          ? AppColors.whiteTextColor
                                          : AppColors.pass,
                                      lines: 1),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: sizes!.widthRatio * 32.0),
                                child: TextView.getMediumText16(
                                    "\$ 74", Assets.poppinsMedium,
                                    color: isJumpstartSelected
                                        ? AppColors.whiteTextColor
                                        : AppColors.requestTowTextColor,
                                    lines: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 88.0,
              ),

              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child:
                    CommonWidgets.getStartButton("Add To Service", onPress: () {
                  Navigator.pop(context);
                }),
              ),

              // Padding(
              //   padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       CommonWidgets.getCustomOutlineBtn("Request Tow",
              //           onPress: () {}),
              //       CommonWidgets.getCustomBtn("Add To Service", onPress: () {
              //         Navigator.pop(context);
              //       }),
              //     ],
              //   ),
              // ),
              //

              SizedBox(
                height: sizes!.heightRatio * 20.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
