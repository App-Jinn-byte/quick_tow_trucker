import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_drawer_bar.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

import 'booking_history_screens/booking_history_detail_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      drawer: CommonDrawerBar.getDrawerBar(context: context, isCurrentScreen: 4),
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImage), fit: BoxFit.fill)),
        child: Column(
          children: [
            CommonWidgets.getAppBarWithTitleAndBackButton(
                context: context,
                title: "Booking History",
                icon: "assets/png/menu_icon@2x.png",
                onPress: () {
                  scaffoldKey.currentState?.openDrawer();
                }),
            SizedBox(
              height: sizes!.heightRatio * 10,
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: CommonPadding.commonWidthPadding30,
                      right: CommonPadding.commonWidthPadding30),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: const BookingHistoryDetailScreen()));
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: sizes!.heightRatio * 10),
                          child: CommonWidgets.getBookingHistoryCard(
                              title: "Tow Tom", price: "160.0", rating: 3.4),
                        ),
                      );
                    },
                  )),
            ),
            SizedBox(
              height: sizes!.heightRatio * 5,
            )
          ],
        ),
      ),
    ));
  }
}
