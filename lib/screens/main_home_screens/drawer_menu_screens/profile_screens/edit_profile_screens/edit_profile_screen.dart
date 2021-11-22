import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

import 'edit_profile_provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;

  late EditProfileProvider editProfileProvider;

  late bool _isFirstNameValid;
  late bool _isLastNameValid;
  late bool _isEmailValid;
  late bool _isPhoneNumberValid;
  late bool _isValidPassword;
  late bool _hiddenPassword;

  String firstName =
      PreferenceUtils.getString(Strings.loginFirstName) ?? "Randy Joe";
  String lastName =
      PreferenceUtils.getString(Strings.loginLastName) ?? "Hudson William";
  String email =
      PreferenceUtils.getString(Strings.loginEmail) ?? "RandyJoe@gmail.com";
  String phoneNumber =
      PreferenceUtils.getString(Strings.loginPhoneNo) ?? "(303) 148-6555";
  String password =
      PreferenceUtils.getString(Strings.loginPassword) ?? "******";

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _passwordController = TextEditingController();

    editProfileProvider = EditProfileProvider();
    editProfileProvider =
        Provider.of<EditProfileProvider>(context, listen: false);
    editProfileProvider.init(context: context);

    _isFirstNameValid = true;
    _isLastNameValid = true;
    _isEmailValid = true;
    _isPhoneNumberValid = true;
    _isValidPassword = true;
    _hiddenPassword = true;

    _firstNameController.addListener(() {
      _isFirstNameValid = _firstNameController.text.length >= 4;
      setState(() {
        if (_firstNameController.text.length >= 4) {
          // userNameIcon = Icons.check;
          // userNameIconColor = AppColors.appTheme;
        } else {
          // userNameIcon = Icons.clear;
          // userNameIconColor = AppColors.redColor;
        }
      });
    });

    _lastNameController.addListener(() {
      _isLastNameValid = _lastNameController.text.length >= 4;
      setState(() {
        if (_lastNameController.text.length >= 4) {
          // userNameIcon = Icons.check;
          // userNameIconColor = AppColors.appTheme;
        } else {
          // userNameIcon = Icons.clear;
          // userNameIconColor = AppColors.redColor;
        }
      });
    });

    _emailController.addListener(() async {
      _isEmailValid = _emailController.text.validateEditEmail();
      setState(() {
        if (_isEmailValid && _emailController.text.isNotEmpty) {
          // emailIcon = Icons.check;
          // emailIconColor = AppColors.appTheme;
        } else {
          // emailIcon = Icons.clear;
          // emailIconColor = AppColors.redColor;
        }
      });
    });

    _phoneNumberController.addListener(() {
      _isPhoneNumberValid = _phoneNumberController.text.length >= 10 &&
          _phoneNumberController.text.length < 16;
      setState(() {
        if (_phoneNumberController.text.length >= 10 &&
            _phoneNumberController.text.length < 16) {
          // phoneIcon = Icons.check;
          // phoneIconColor = AppColors.appTheme;
        } else {
          // phoneIcon = Icons.clear;
          // phoneIconColor = AppColors.redColor;
        }
      });
    });

    _passwordController.addListener(() {
      _isValidPassword = _passwordController.text.length >= 8;
      setState(() {
        if (_passwordController.text.length >= 8) {
          // passwordIcon = Icons.check;
          // passwordIconColor = AppColors.appTheme;
        } else {
          // passwordIcon = Icons.clear;
          // passwordIconColor = AppColors.redColor;
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    editProfileProvider =
        Provider.of<EditProfileProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Container(
            height: sizes!.height,
            width: sizes!.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.mainBgImageWithLogoOnTop),
                    fit: BoxFit.fill)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: sizes!.widthRatio * 30.0,
                      top: sizes!.heightRatio * 30.0),
                  child: CommonWidgets.getAppBarCustomBackButton(context),
                ),

                // CommonWidgets.getAppBarWithTitleAndBackButton(
                //     context: context,
                //     title: "Edit Profile",
                //     icon: "assets/png/back_btn_icon@2x.png",
                //     onPress: () {
                //       Navigator.pop(context);
                //     }),

                SizedBox(
                  height: sizes!.heightRatio * 35.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CommonWidgets.getProfileImage(
                      // profileImg: image,
                      // selectedImage: selectedImageByUser,
                      // isImageUploaded: isImageUploaded,
                      onEditImage: () {
                    Toasts.getErrorToast(text: "Try it later :) ");
                    // getImage();
                  }),
                ),
                SizedBox(
                  height: sizes!.heightRatio * 35.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CommonWidgets.loginText(
                          text: "First Name",
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
                    placeHolder: "Alan",
                    icon: "assets/png/profile_icon@2x.png",
                    controller: _firstNameController,
                    keyboardType: TextInputType.text,
                    isValid: _isFirstNameValid,
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
                          text: "Last Name",
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
                    placeHolder: "Thor",
                    icon: "assets/png/profile_icon@2x.png",
                    controller: _lastNameController,
                    keyboardType: TextInputType.text,
                    isValid: _isLastNameValid,
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
                          text: "Email",
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
                    placeHolder: "Alan@gmail.com",
                    icon: "assets/png/email_icon@2x.png",
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    isValid: _isEmailValid,
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
                          text: "Phone Number",
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
                    placeHolder: "(099) 098765",
                    icon: "assets/png/phone_number_icon@2x.png",
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    isValid: _isPhoneNumberValid,
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
                          text: "Password",
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
                      .customTextFieldWithPasswordCustomContainerIcon(
                    placeHolder: "******",
                    icon: "assets/png/password_icon@2x.png",
                    keyboardType: TextInputType.text,
                    hidePassword: _hiddenPassword,
                    clickIcon: clickIcon,
                    isValid: _isValidPassword,
                    controller: _passwordController,
                  ),
                ),
                SizedBox(
                  height: sizes!.heightRatio * 70.0,
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: sizes!.widthRatio * 30,
                        right: sizes!.widthRatio * 30),
                    child: CommonWidgets.getStartButton("Update", onPress: () {
                      updateProfile();
                    })),
                SizedBox(
                  height: sizes!.heightRatio * 30.0,
                ),
                // Padding(
                //     // this is new
                //     padding: EdgeInsets.only(
                //         bottom: MediaQuery.of(context).viewInsets.bottom)),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void clickIcon() {
    setState(() {
      _hiddenPassword = !_hiddenPassword;
    });
  }

  Future<void> updateProfile() async {
    var firstName = _firstNameController.text.toString().trim();
    var lastName = _lastNameController.text.toString().trim();
    var email = _emailController.text.toString().trim();
    var phoneNumber = _phoneNumberController.text.toString().trim();
    var password = _passwordController.text.toString().trim();

    await editProfileProvider.callEditProfileApi(
        id: "id",
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        profilePhoto: "profilePhoto");

    if (editProfileProvider.isEditProfileSuccessful == true) {
      Toasts.getSuccessToast(text: "Profile Updated");
      Navigator.pop(context);
    }
  }
}

extension StringLoginExtensions on String {
  bool validateEditEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }

  String removeSpaces() {
    return this.replaceAll(' ', '');
  }
}
