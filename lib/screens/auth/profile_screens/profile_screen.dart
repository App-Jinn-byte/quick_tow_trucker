import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              Container(
                height: sizes!.heightRatio * 65.0,
                decoration:
                    const BoxDecoration(color: AppColors.whiteTextColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: sizes!.widthRatio * 31),
                          child: CommonWidgets.getAppBarIconAndText(
                              context: context,
                              onPress: () {},
                              icon: "assets/png/menu_icon@2x.png"),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: sizes!.widthRatio * 20),
                          child: TextView.getMediumText18(
                              "Profile", Assets.poppinsMedium,
                              color: AppColors.blackTextColor, lines: 1),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: sizes!.widthRatio * 31),
                      child: CommonWidgets.getAppBarIconAndText(
                        context: context,
                        icon: "assets/png/edit_icon@2x.png",
                        onPress: () {
                          Toasts.getSuccessToast(text: "Try it later :)");
                        },
                      ),
                    ),
                  ],
                ),
              ),

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
                      "Account", Assets.poppinsLight,
                      color: AppColors.openTheTruckerAppTextColor, lines: 2),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Driver license", Assets.poppinsMedium,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Ratings & Reviews", Assets.poppinsMedium,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Insurance Information", Assets.poppinsMedium,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                        "Company Support", Assets.poppinsMedium,
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

              // CommonWidgets.getAppBarText(context, text: "text")
            ],
          ),
        ),
      ),
    ));
  }
}
