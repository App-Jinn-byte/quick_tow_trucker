import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
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
                image: AssetImage(Assets.appBgImage), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: sizes!.heightRatio * 65.0,
                decoration: BoxDecoration(color: AppColors.whiteTextColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: sizes!.widthRatio * 31),
                      child: CommonWidgets.customMenuButton(
                          context: context, onPress: () {}),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: sizes!.widthRatio * 15),
                      child: TextView.getTextWith24(
                          "Profile", Assets.poppinsMedium,
                          color: AppColors.blackTextColor, lines: 1),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: sizes!.widthRatio * 31),
                      child: CommonWidgets.customMenuButton(
                          context: context, onPress: () {}),
                    ),
                  ],
                ),
              ),


              // CommonWidgets.getAppBarText(context, text: "text")
            ],
          ),
        ),
      ),
    ));
  }
}
