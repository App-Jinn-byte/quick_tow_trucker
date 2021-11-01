import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class VehicleDetailScreen extends StatefulWidget {
  const VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  _VehicleDetailScreenState createState() => _VehicleDetailScreenState();
}

class _VehicleDetailScreenState extends State<VehicleDetailScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              CommonWidgets.getAppBarWithoutContainerTitle24AndBackButton(
                  context: context,
                  title: "Vehicle Details",
                  icon: "assets/png/back_btn_icon@2x.png",
                  onPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: sizes!.heightRatio * 70,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 29.0,
                    right: sizes!.heightRatio * 29.0),
                child: TextView.getMediumText16(
                    "Vehicle Information", Assets.poppinsMedium,
                    color: AppColors.openTheTruckerAppTextColor,
                    lines: 2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                      "Vehicle Name",
                      Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 1,
                    ),
                    TextView.getRegular13Text("Suzuki", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                      "Vehicle Model",
                      Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 1,
                    ),
                    TextView.getRegular13Text("Axel", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                      "Vehicle Number",
                      Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 1,
                    ),
                    TextView.getRegular13Text("LEU-7652", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegular13Text(
                      "Vehicle Category",
                      Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 1,
                    ),
                    TextView.getRegular13Text("FWD Only", Assets.poppinsLight,
                        color: AppColors.subHeadingTextColor, lines: 1),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getMediumText16(
                        "Vehicle Status", Assets.poppinsRegular,
                        color: AppColors.getStartedButtonColor,
                        lines: 1,
                        fontWeight: FontWeight.bold),
                    TextView.getSubHeadingTextWith15(
                        "Active", Assets.poppinsMedium,
                        color: AppColors.activeTextColor, lines: 1),
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 160.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: CommonWidgets.getStartButton("Update Vehicle Details",
                    onPress: () {
                  Navigator.pop(context);
                }),
              ),
              SizedBox(
                height: sizes!.heightRatio * 40.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
