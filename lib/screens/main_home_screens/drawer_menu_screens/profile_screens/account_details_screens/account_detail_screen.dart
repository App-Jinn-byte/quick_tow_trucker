import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class AccountDetailScreen extends StatefulWidget {
  const AccountDetailScreen({Key? key}) : super(key: key);

  @override
  _AccountDetailScreenState createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImageWithLogoOnBottom),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: sizes!.heightRatio * 30.0,
                    right: sizes!.widthRatio * 30.0),
                child:
                    CommonWidgets.getAppBarWithoutContainerTitleAndBackButton(
                        context: context,
                        title: "Account Details",
                        icon: "assets/png/back_btn_icon@2x.png",
                        onPress: () {
                          Navigator.pop(context);
                        }),
              ),
              SizedBox(
                height: sizes!.heightRatio * 74.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: TextView.getMediumText16(
                    "Available Balance", Assets.poppinsMedium,
                    color: AppColors.getStartedButtonColor,
                    fontWeight: FontWeight.bold,
                    lines: 1),
              ),
              SizedBox(
                height: sizes!.heightRatio * 5.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: TextView.getWelcomeTextWith28(
                    "\$ 47,260.45", Assets.poppinsMedium,
                    color: AppColors.blackTextColor, lines: 1),
              ),
              SizedBox(
                height: sizes!.heightRatio * 62.1,
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
                        "Account Number", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    TextView.getRegular13Text(
                        "00982742829201-1", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
                        "Account Holder", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    TextView.getRegular13Text("Randy Joe", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
                        "Expiry Date", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    TextView.getRegular13Text("22-04-22", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
              SizedBox(
                height: sizes!.heightRatio * 180.0,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: sizes!.widthRatio * 30,
                      right: sizes!.widthRatio * 30),
                  child: CommonWidgets.getStartButton("Update Account",
                      onPress: () {
                    // updateProfile();
                    Navigator.pop(context);
                  })),
              SizedBox(
                height: sizes!.heightRatio * 90.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
