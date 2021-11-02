import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

import 'company_support_screens/message_screen.dart';
import 'driver_license_screens/driver_license_screen.dart';
import 'edit_profile_screens/edit_profile_screen.dart';
import 'insurance_info_screens/insurance_info_screen.dart';
import 'vehicle_details_screens/vehicle_detail_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      drawer: CommonWidgets.getDrawerBar(context: context, isCurrentScreen: 2),
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImage), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonWidgets.getAppBarWithTitleAndDoubleButton(
                  context: context,
                  title: "Profile",
                  firstIcon: "assets/png/menu_icon@2x.png",
                  secondIcon: "assets/png/edit_icon@2x.png",
                  onFirstIconPress: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  onSecondIconPress: () {
                    Navigator.push(context,
                        SlideRightRoute(page: const EditProfileScreen()));
                  }),

              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              // Profile Image & userName
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30,
                    right: sizes!.widthRatio * 30),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: sizes!.heightRatio * 88,
                      width: sizes!.widthRatio * 88,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/png/photo@2x.png",
                        ),
                        radius: 50.0,
                        backgroundColor: AppColors.transparentColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: sizes!.widthRatio * 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextView.getMediumText18(
                            "Alan Thor",
                            Assets.poppinsMedium,
                            color: AppColors.blackTextColor,
                            lines: 1,
                          ),
                          TextView.getRegular13Text(
                              "AlanThor@Asgard.com", Assets.poppinsRegular,
                              color: AppColors.blackTextColor, lines: 1),
                          TextView.getRegular13Text(
                              "(900)-1234567", Assets.poppinsRegular,
                              color: AppColors.blackTextColor, lines: 1)
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 15.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child: const Divider(),
              ),

              SizedBox(
                height: sizes!.heightRatio * 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getMediumText16(
                      "Account Details", Assets.poppinsLight,
                      color: AppColors.openTheTruckerAppTextColor,
                      lines: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 35.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Vehicle Details", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const VehicleDetailScreen()));
                      },
                      child: Image.asset(
                        "assets/png/profile_back_btn_icon@2x.png",
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
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Driver license", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const DriverLicenseScreen()));
                      },
                      child: Image.asset(
                        "assets/png/profile_back_btn_icon@2x.png",
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
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Insurance Information", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const InsuranceInfoScreen()));
                      },
                      child: Image.asset(
                        "assets/png/profile_back_btn_icon@2x.png",
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
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Company Support", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const MessageScreen()));
                      },
                      child: Image.asset(
                        "assets/png/profile_back_btn_icon@2x.png",
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
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Account Details", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    GestureDetector(
                      onTap: () {
                        Toasts.getSuccessToast(text: "Try it Later :)");
                      },
                      child: Image.asset(
                        "assets/png/profile_back_btn_icon@2x.png",
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
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child: const Divider(),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    right: sizes!.heightRatio * 30.0),
                child: InkWell(
                  onTap: () {
                    logout();
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: sizes!.heightRatio * 33.0,
                        width: sizes!.widthRatio * 33.0,
                        child: Image.asset("assets/png/logout_icon@2x.png"),
                      ),
                      SizedBox(
                        width: sizes!.widthRatio * 15,
                      ),
                      TextView.getMediumText16("Logout", Assets.poppinsMedium,
                          color: AppColors.redColor,
                          lines: 1,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: sizes!.heightRatio * 20.0,
              ),

              // CommonWidgets.getAppBarText(context, text: "text")
            ],
          ),
        ),
      ),
    ));
  }

  Future<void> logout() async {
    Navigator.pushReplacement(
        context, SlideRightRoute(page: const LoginScreen()));
  }
}
