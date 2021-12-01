import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/update_vehicle_detail_screens/update_vehicle_detail_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/vehicle_detail_provider.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class VehicleDetailScreen extends StatefulWidget {
  const VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  _VehicleDetailScreenState createState() => _VehicleDetailScreenState();
}

class _VehicleDetailScreenState extends State<VehicleDetailScreen> {
  final String _userID = PreferenceUtils.getString(Strings.loginUserId) ?? "";
  late VehicleDetailProvider vehicleDetailProvider;

  @override
  void initState() {
    print("_userID: $_userID");

    vehicleDetailProvider = VehicleDetailProvider();
    vehicleDetailProvider =
        Provider.of<VehicleDetailProvider>(context, listen: false);
    vehicleDetailProvider.init(context: context);
    vehicleDetailProvider.getUserVehicleData(userID: _userID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<VehicleDetailProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      body: vehicleDetailProvider.isVehicleDataLoaded
          ? Container(
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
                      child: vehicleDetailProvider
                              .getUserVehicleResponse.data!.isNotEmpty
                          ? ListView.builder(
                              itemCount: vehicleDetailProvider
                                  .getUserVehicleResponse.data!.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: sizes!.heightRatio * 5.0,
                                      bottom: sizes!.heightRatio * 5.0),
                                  child:
                                      CommonWidgets.getVehicleDetailContainer(
                                          make: vehicleDetailProvider
                                              .getUserVehicleResponse
                                              .data![index]
                                              .make,
                                          model: vehicleDetailProvider
                                              .getUserVehicleResponse
                                              .data![index]
                                              .model,
                                          plateNumber: vehicleDetailProvider
                                              .getUserVehicleResponse
                                              .data![index]
                                              .licensePlateNumber,
                                          category: vehicleDetailProvider
                                              .getUserVehicleResponse
                                              .data![index]
                                              .transmissionTypeTitle,
                                          onEditPress: () {
                                            Navigator.push(
                                                context,
                                                SlideRightRoute(
                                                    page:
                                                        UpdateVehicleDetailScreen(
                                                  id: vehicleDetailProvider
                                                      .getUserVehicleResponse
                                                      .data![index]
                                                      .vehicleId,
                                                  make: vehicleDetailProvider
                                                      .getUserVehicleResponse
                                                      .data![index]
                                                      .make
                                                      .toString(),
                                                  model: vehicleDetailProvider
                                                      .getUserVehicleResponse
                                                      .data![index]
                                                      .model,
                                                  plateNumber:
                                                      vehicleDetailProvider
                                                          .getUserVehicleResponse
                                                          .data![index]
                                                          .licensePlateNumber,
                                                  category: vehicleDetailProvider
                                                      .getUserVehicleResponse
                                                      .data![index]
                                                      .transmissionTypeTitle,
                                                )));
                                          },
                                          onDeletePress: () {
                                            deleteVehicleById(
                                              vehicleID: vehicleDetailProvider
                                                  .getUserVehicleResponse
                                                  .data![index]
                                                  .vehicleId,
                                            );
                                          }),
                                );
                              })
                          : Center(
                              child: TextView.getMediumText16(
                                  "No Vehicle", Assets.poppinsMedium,
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.bold,
                                  lines: 1),
                            ),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: SizedBox(
                height: sizes!.height * 0.15,
                child: Lottie.asset(Assets.apiLoading, fit: BoxFit.cover),
              ),
            ),
    ));
  }

  Future<void> deleteVehicleById({@required dynamic vehicleID}) async {
    await vehicleDetailProvider.deleteVehicle(vehicleID: vehicleID);
    if (vehicleDetailProvider.isVehicleDeleted == true) {
      await vehicleDetailProvider.getUserVehicleData(userID: _userID);
    }
  }
}
