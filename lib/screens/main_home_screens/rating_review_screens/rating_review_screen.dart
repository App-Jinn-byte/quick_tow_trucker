import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class RatingReviewScreen extends StatefulWidget {
  const RatingReviewScreen({Key? key}) : super(key: key);

  @override
  _RatingReviewScreenState createState() => _RatingReviewScreenState();
}

class _RatingReviewScreenState extends State<RatingReviewScreen> {
  late bool _isValidFeedback;
  late TextEditingController _feedbackController;

  @override
  void initState() {
    _isValidFeedback = true;
    _feedbackController = TextEditingController();

    _feedbackController.addListener(() {
      _isValidFeedback = _feedbackController.text.length >= 4;
      setState(() {
        if (_feedbackController.text.length >= 5) {
          // userNameIcon = Icons.check;
          // userNameIconColor = AppColors.appTheme;
        } else {
          // userNameIcon = Icons.clear;
          // userNameIconColor = AppColors.redColor;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                height: sizes!.heightRatio * 120.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getTextWith22(
                      "How was your experience?", Assets.poppinsMedium,
                      color: AppColors.blackTextColor, lines: 1),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextView.getSubHeadingTextWith15(
                        "Rate your Booking!", Assets.poppinsMedium,
                        color: AppColors.subHeadingTextColor,
                        lines: 1,
                        fontWeight: FontWeight.normal)),
              ),
              SizedBox(
                height: sizes!.heightRatio * 50.0,
              ),
              Container(
                child: RatingBar.builder(
                  initialRating: 4.0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 45,
                  itemPadding:
                      EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  ignoreGestures: false,
                  onRatingUpdate: (rating) {
                    // onPress!.call(rating);
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 50.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: CommonWidgets.loginText(
                        text: "Feedback",
                        fontSize: sizes!.fontRatio * 15.0,
                        color: AppColors.blackTextColor)),
              ),
              SizedBox(
                height: sizes!.heightRatio * 6,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30,
                    right: sizes!.widthRatio * 30),
                child: CommonWidgets
                    .customTextFieldWithMultipleLinesCustomContainerIcon(
                  placeHolder: "Entry your remarks...",
                  icon: "assets/png/feedback_icon@2x.png",
                  //TODO: Change this to Multiple Line
                  controller: _feedbackController,
                  keyboardType: TextInputType.multiline,
                  isValid: _isValidFeedback,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 160.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: CommonWidgets.getStartButton("Submit", onPress: () {
                  Navigator.pushReplacement(context,
                      SlideRightRoute(page: const FindBookingScreen()));
                }),
              ),
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
