import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class UpdateVehicleDetailScreen extends StatefulWidget {
  const UpdateVehicleDetailScreen({Key? key}) : super(key: key);

  @override
  _UpdateVehicleDetailScreenState createState() =>
      _UpdateVehicleDetailScreenState();
}

class _UpdateVehicleDetailScreenState extends State<UpdateVehicleDetailScreen> {
  late TextEditingController _vehicleMakeController;
  late TextEditingController _vehicleModelController;
  late TextEditingController _licensePhoneNumberModelController;
  late TextEditingController _transmissionTypeController;

  late bool _isValidVehicleMake;
  late bool _isValidVehicleModel;
  late bool _isValidLicensePlateNumber;
  late bool _isValidTransmissionType;

  @override
  void initState() {
    _vehicleMakeController = TextEditingController();
    _vehicleModelController = TextEditingController();
    _licensePhoneNumberModelController = TextEditingController();
    _transmissionTypeController = TextEditingController();

    _isValidVehicleMake = true;
    _isValidVehicleModel = true;
    _isValidLicensePlateNumber = true;
    _isValidTransmissionType = true;

    _vehicleMakeController.addListener(() {
      _isValidVehicleMake = _vehicleMakeController.text.length >= 4;
      setState(() {
        if (_vehicleMakeController.text.length >= 4) {
          // userNameIcon = Icons.check;
          // userNameIconColor = AppColors.appTheme;
        } else {
          // userNameIcon = Icons.clear;
          // userNameIconColor = AppColors.redColor;
        }
      });
    });

    _vehicleModelController.addListener(() {
      _isValidVehicleModel = _vehicleModelController.text.length >= 4;
      setState(() {
        if (_vehicleModelController.text.length >= 4) {
          // userNameIcon = Icons.check;
          // userNameIconColor = AppColors.appTheme;
        } else {
          // userNameIcon = Icons.clear;
          // userNameIconColor = AppColors.redColor;
        }
      });
    });

    _licensePhoneNumberModelController.addListener(() {
      _isValidLicensePlateNumber =
          _licensePhoneNumberModelController.text.length >= 4;
      setState(() {
        if (_licensePhoneNumberModelController.text.length >= 4) {
          // userNameIcon = Icons.check;
          // userNameIconColor = AppColors.appTheme;
        } else {
          // userNameIcon = Icons.clear;
          // userNameIconColor = AppColors.redColor;
        }
      });
    });

    _transmissionTypeController.addListener(() {
      _isValidTransmissionType = _transmissionTypeController.text.length >= 4;
      setState(() {
        if (_transmissionTypeController.text.length >= 4) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30.0,
                    top: sizes!.heightRatio * 30.0),
                child: CommonWidgets.getAppBarCustomBackButton(context),
              ),
              SizedBox(
                height: sizes!.heightRatio * 59.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 29.0,
                    right: sizes!.heightRatio * 29.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextView.getMediumText16(
                      "Update Vehicle Information", Assets.poppinsMedium,
                      color: AppColors.openTheTruckerAppTextColor,
                      lines: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 18.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: CommonWidgets.loginText(
                        text: "Vehicle Make",
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
                child: CommonWidgets.customTextFieldWithCustomContainerIcon(
                  placeHolder: "Honda",
                  icon: "assets/png/vehicle_icon@2x.png",
                  controller: _vehicleMakeController,
                  keyboardType: TextInputType.text,
                  isValid: _isValidVehicleMake,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: CommonWidgets.loginText(
                        text: "Vehicle Model",
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
                child: CommonWidgets.customTextFieldWithCustomContainerIcon(
                  placeHolder: "Civic-X",
                  icon: "assets/png/vehicle_icon@2x.png",
                  controller: _vehicleModelController,
                  keyboardType: TextInputType.text,
                  isValid: _isValidVehicleModel,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: CommonWidgets.loginText(
                        text: "License Plate Number",
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
                child: CommonWidgets.customTextFieldWithCustomContainerIcon(
                  placeHolder: "LEU-8899",
                  icon: "assets/png/vehicle_number_icon@2x.png",
                  controller: _licensePhoneNumberModelController,
                  keyboardType: TextInputType.text,
                  isValid: _isValidLicensePlateNumber,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: CommonWidgets.loginText(
                        text: "Transmission Type",
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
                child: CommonWidgets.customTextFieldWithCustomContainerIcon(
                  placeHolder: "4 Wheels",
                  icon: "assets/png/transmission_type_icon@2x.png",
                  controller: _transmissionTypeController,
                  keyboardType: TextInputType.text,
                  isValid: _isValidTransmissionType,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 138.0,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: sizes!.widthRatio * 30,
                      right: sizes!.widthRatio * 30),
                  child: CommonWidgets.getStartButton("Update", onPress: () {
                    // updateProfile();
                    Navigator.pop(context);
                  })),
              SizedBox(
                height: sizes!.heightRatio * 90.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}