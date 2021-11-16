import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class InsuranceInfoScreen extends StatefulWidget {
  const InsuranceInfoScreen({Key? key}) : super(key: key);

  @override
  _InsuranceInfoScreenState createState() => _InsuranceInfoScreenState();
}

class _InsuranceInfoScreenState extends State<InsuranceInfoScreen> {
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
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              CommonWidgets.getAppBarWithoutContainerTitle24AndBackButton(
                  context: context,
                  title: "Insurance Info",
                  icon: "assets/png/back_btn_icon@2x.png",
                  onPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: sizes!.heightRatio * 40.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Image.asset(
                  "assets/png/insurance_info_photo@2x.png",
                  height: sizes!.heightRatio * 196.0,
                  width: sizes!.widthRatio * 315.0,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 40.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getMediumText16(
                      "Insurance Information", Assets.poppinsMedium,
                      color: AppColors.getStartedButtonColor,
                      fontWeight: FontWeight.bold,
                      lines: 1),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: TextView.getRegularWith13(
                    "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form,.",
                    Assets.poppinsLight,
                    color: AppColors.subHeadingTextColor,
                    lines: 5),
              ),
              SizedBox(
                height: sizes!.heightRatio * 140.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: CommonWidgets.getStartButton(
                    "Update Insurance Information", onPress: () {
                  Navigator.pop(context);
                }),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
