import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/common_padding.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      drawer: CommonWidgets.getDrawerBar(context: context, isCurrentScreen: 3),
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
                title: "Notifications",
                icon: "assets/png/menu_icon@2x.png",
                onPress: () {
                  scaffoldKey.currentState?.openDrawer();
                }),
            SizedBox(
              height: sizes!.heightRatio * 10.0,
            ),
            Expanded(
                child: Padding(
              padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: sizes!.heightRatio * 5.0,
                          bottom: sizes!.heightRatio * 5.0),
                      child: Column(
                        children: [
                          CommonWidgets.getNotificationCard(),
                          SizedBox(
                            height: sizes!.heightRatio * 5.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: sizes!.widthRatio * 8.0,
                                right: sizes!.widthRatio * 8.0),
                            child: const Divider(),
                          ),
                        ],
                      ),
                    );
                  }),
            )),
          ],
        ),
      ),
    ));
  }
}
