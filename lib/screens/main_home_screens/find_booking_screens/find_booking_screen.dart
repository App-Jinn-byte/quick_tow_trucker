import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

class FindBookingScreen extends StatefulWidget {
  const FindBookingScreen({Key? key}) : super(key: key);

  @override
  _FindBookingScreenState createState() => _FindBookingScreenState();
}

class _FindBookingScreenState extends State<FindBookingScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer:
            CommonWidgets.getDrawerBar(context: context, isCurrentScreen: 1),
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
                    title: "Booking",
                    icon: "assets/png/menu_icon@2x.png",
                    onPress: () {
                      scaffoldKey.currentState?.openDrawer();
                    }),
                SizedBox(
                  height: sizes!.heightRatio * 10.0,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: sizes!.widthRatio * 20.0,
                                right: sizes!.widthRatio * 20.0,
                                top: sizes!.heightRatio * 10.0,
                                bottom: sizes!.heightRatio * 10.0),
                            child: CommonWidgets.getBookingContainer(
                                context: context),
                          );
                        })),
              ],
            )),
      ),
    );
  }
}
