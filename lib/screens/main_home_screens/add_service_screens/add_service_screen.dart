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
                height: sizes!.heightRatio * 30.0,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: sizes!.widthRatio * 30,
                      right: sizes!.widthRatio * 30),
                  child: Container(
                    width: sizes!.widthRatio * 325,
                    height: sizes!.heightRatio * 56,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.transparentColor,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.whiteTextColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.textFieldBorderColor,
                          blurRadius: 1, //18
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: sizes!.widthRatio * 12.0,
                          ),
                          child: Transform.scale(
                            scale: 1.3,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor:
                                      AppColors.checkBoxBorderColor),
                              child: Checkbox(
                                value: false,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                onChanged: (isCheck) {},
                                activeColor: AppColors.checkBoxBorderColor,
                              ),
                            ),
                          ),
                        ),
                        TextView.getMediumText14(
                          "Tow Request",
                          Assets.poppinsRegular,
                          color: AppColors.blackTextColor,
                          lines: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: sizes!.heightRatio * 45.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getMediumText16(
                      "Road - side services", Assets.poppinsMedium,
                      color: AppColors.getStartedButtonColor,
                      fontWeight: FontWeight.bold,
                      lines: 1),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 23.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegularWith13(
                        "Flat tire replacement", Assets.poppinsMedium,
                        color: AppColors.pass, lines: 1),
                    TextView.getMediumText16("\$ 32", Assets.poppinsMedium,
                        color: AppColors.popUpTextColor,
                        fontWeight: FontWeight.bold,
                        lines: 1),
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
                    TextView.getRegularWith13(
                        "Lockout Service", Assets.poppinsMedium,
                        color: AppColors.pass, lines: 1),
                    TextView.getMediumText16("\$ 16", Assets.poppinsMedium,
                        color: AppColors.popUpTextColor,
                        fontWeight: FontWeight.bold,
                        lines: 1),
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
                    TextView.getRegularWith13(
                        "Battery Jumpstart", Assets.poppinsMedium,
                        color: AppColors.pass, lines: 1),
                    TextView.getMediumText16("\$ 72", Assets.poppinsMedium,
                        color: AppColors.popUpTextColor,
                        fontWeight: FontWeight.bold,
                        lines: 1),
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
                    TextView.getRegularWith13(
                        "Fuel deliveries", Assets.poppinsMedium,
                        color: AppColors.pass, lines: 1),
                    TextView.getMediumText16("\$ 42", Assets.poppinsMedium,
                        color: AppColors.popUpTextColor,
                        fontWeight: FontWeight.bold,
                        lines: 1),
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
                    TextView.getRegularWith13(
                        "Winching Service", Assets.poppinsMedium,
                        color: AppColors.pass, lines: 1),
                    TextView.getMediumText16("\$ 74", Assets.poppinsMedium,
                        color: AppColors.popUpTextColor,
                        fontWeight: FontWeight.bold,
                        lines: 1),
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
                height: sizes!.heightRatio * 140.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child:
                    CommonWidgets.getStartButton("Add To Service", onPress: () {
                  // Navigator.push(context,
                  //     SlideRightRoute(page: const PaymentTotalScreen()));
                  Navigator.pop(context);
                }),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
