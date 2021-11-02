import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';


class BookingHistoryDetailScreen extends StatefulWidget {
  final int? userID;

  const BookingHistoryDetailScreen({Key? key, this.userID}) : super(key: key);

  @override
  _BookingHistoryDetailScreenState createState() =>
      _BookingHistoryDetailScreenState();
}

class _BookingHistoryDetailScreenState
    extends State<BookingHistoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration:  const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImage), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonWidgets.getAppBarWithTitleAndBackButton(
                  context: context,
                  title: "Booking Details",
                  icon: "assets/png/back_btn_icon@2x.png",
                  onPress: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: sizes!.heightRatio * 30,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.whiteTextColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.transparentColor,
                          blurRadius: 18,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Image.asset("assets/png/google_map_demo_03@2x.png")),
              ),
              SizedBox(
                height: sizes!.heightRatio * 20.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getRegularBoldText(
                        "13-01-2021, 6:00 PM", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1),
                    TextView.getRegularBoldText("\$100.0", Assets.poppinsMedium,
                        color: AppColors.blackTextColor, lines: 1)
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/png/map_route_icon@2x.png",
                        height: sizes!.heightRatio * 50.0,
                        width: sizes!.widthRatio * 9.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: sizes!.widthRatio * 20.0,
                            right: sizes!.widthRatio * 20.0,
                            top: sizes!.heightRatio * 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextView.getRegularWith13(
                                  "227 Sector FF DHA Phase 4 Qatar",
                                  Assets.poppinsRegular,
                                  color: AppColors.routeTextColor,
                                  lines: 3),
                            ),
                            SizedBox(
                              height: sizes!.heightRatio * 8.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextView.getRegularWith13(
                                  "Marsa Malaz Kempinski Hotel Lower Ground Floor The Pearl, Doha, Qatar",
                                  Assets.poppinsRegular,
                                  color: AppColors.routeTextColor,
                                  lines: 3),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 20.0,
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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getMediumText16(
                      "Payment Summary", Assets.poppinsMedium,
                      color: AppColors.getStartedButtonColor,
                      fontWeight: FontWeight.bold,
                      lines: 1),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 20.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getSubHeadingTextWith15(
                        "Hookup Fee", Assets.poppinsRegular,
                        color: AppColors.blackTextColor,
                        lines: 1,
                        fontWeight: FontWeight.normal),
                    TextView.getSubHeadingTextWith15(
                        "\$ 42.00", Assets.poppinsRegular,
                        color: AppColors.blackTextColor, lines: 1),
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getSubHeadingTextWith15(
                        "Distance Fee", Assets.poppinsRegular,
                        color: AppColors.blackTextColor,
                        lines: 1,
                        fontWeight: FontWeight.normal),
                    TextView.getSubHeadingTextWith15(
                        "\$ 42.00", Assets.poppinsRegular,
                        color: AppColors.blackTextColor, lines: 1),
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView.getSubHeadingTextWith15(
                        "Flat tire replacement", Assets.poppinsRegular,
                        color: AppColors.blackTextColor,
                        lines: 1,
                        fontWeight: FontWeight.normal),
                    TextView.getSubHeadingTextWith15(
                        "\$ 42.00", Assets.poppinsRegular,
                        color: AppColors.blackTextColor, lines: 1),
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
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextView.getSubHeadingTextWith15(
                        "Grand Total", Assets.poppinsMedium,
                        color: AppColors.blackTextColor,
                        lines: 1,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      width: sizes!.widthRatio * 25.0,
                    ),
                    TextView.getSubHeadingTextWith15(
                        "\$ 234.45", Assets.poppinsRegular,
                        color: AppColors.blackTextColor, lines: 1),
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 5.0,
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
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/png/avatar_user_icon@2x.png",
                      height: sizes!.heightRatio * 45.0,
                      width: sizes!.widthRatio * 45.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: sizes!.widthRatio * 10.0,
                            right: sizes!.widthRatio * 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView.getSubHeadingTextWith15(
                                "You completed your booking with Tow Trucks John Doe.",
                                Assets.poppinsRegular,
                                color: AppColors.blackTextColor,
                                lines: 2,
                                fontWeight: FontWeight.normal),
                            RatingBar.builder(
                              initialRating: 4.0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 14,
                              itemPadding: EdgeInsets.symmetric(
                                  horizontal: sizes!.widthRatio * 0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              ignoreGestures: true,
                              onRatingUpdate: (rating) {
                                // onPress!.call(rating);
                                // print(rating);
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
