import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/update_vehicle_detail_screens/update_vehicle_detail_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonWidgets.getAppBarWithTitleAndBackButton(
                context: context,
                title: "Vehicle Details",
                icon: "assets/png/back_btn_icon@2x.png",
                onPress: () {
                  Navigator.pop(context);
                }),
            SizedBox(
              height: sizes!.heightRatio * 25.0,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 20.0,
                    right: sizes!.widthRatio * 20.0),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: sizes!.heightRatio * 5.0,
                            bottom: sizes!.heightRatio * 5.0),
                        child: CommonWidgets.getVehicleDetailContainer(
                            onEditPress: () {
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: const UpdateVehicleDetailScreen()));
                        }),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
