import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginProvider loginProvider;

  late bool isValidEmail;
  late bool isValidPassword;
  late bool isValidForgetEmail;
  late bool hiddenPassword;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  IconData emailIcon = Icons.clear;
  Color emailIconColor = AppColors.redColor;

  IconData forgetEmailIcon = Icons.clear;
  Color forgetEmailIconColor = AppColors.redColor;

  IconData passwordIcon = Icons.clear;
  Color passwordIconColor = AppColors.redColor;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    loginProvider = LoginProvider();
    loginProvider = Provider.of<LoginProvider>(context, listen: false);
    loginProvider.init(context: context);

    hiddenPassword = true;
    isValidEmail = true;
    isValidPassword = true;

    emailController.addListener(() async {
      isValidEmail = emailController.text.validateLoginEmail();
      setState(() {
        if (isValidEmail && emailController.text.isNotEmpty) {
          emailIcon = Icons.check;
          emailIconColor = AppColors.appTheme;
        } else {
          emailIcon = Icons.clear;
          emailIconColor = AppColors.redColor;
        }
      });
    });

    passwordController.addListener(() {
      isValidPassword = passwordController.text.length >= 8;
      setState(() {
        if (passwordController.text.length >= 8) {
          passwordIcon = Icons.check;
          passwordIconColor = AppColors.appTheme;
        } else {
          passwordIcon = Icons.clear;
          passwordIconColor = AppColors.redColor;
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    loginProvider = Provider.of<LoginProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.mainBgImageWithLogoOnBottom),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: sizes!.heightRatio * 22.02),
                  width: sizes!.widthRatio * 206.38,
                  height: sizes!.heightRatio * 92.98,
                  child: Image.asset(Assets.loginLogo),
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 55, //75
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: sizes!.widthRatio * 36.0,
                      right: sizes!.heightRatio * 36.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextView.getWelcomeTextWith28(
                      "Welcome!",
                      Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 1,
                    ),
                  )),
              SizedBox(
                height: sizes!.heightRatio * 6,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 36.0,
                    right: sizes!.heightRatio * 36.0),
                child: TextView.getSubHeadingTextWith15(
                    "It is a long established fact that a reader will be distracted.",
                    Assets.poppinsLight,
                    color: AppColors.subHeadingTextColor,
                    lines: 2),
              ),
              SizedBox(
                height: sizes!.heightRatio * 35, //45
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
                  placeHolder: "Example@gmail.com",
                  icon: "assets/png/email_icon@2x.png",
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  isValid: isValidEmail,
                ),
              ),
              SizedBox(
                height: sizes!.heightRatio * 12,
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
                        hidePassword: hiddenPassword,
                        clickIcon: clickIcon,
                        isValid: isValidPassword,
                        controller: passwordController,
                        keyboardType: TextInputType.text),
              ),
              SizedBox(
                height: sizes!.heightRatio * 35, //40
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: sizes!.widthRatio * 30,
                    right: sizes!.widthRatio * 30),
                child: CommonWidgets.getStartButton("Login", onPress: () {
                  moveToHomeScreen();
                }),
              ),
              SizedBox(
                width: sizes!.widthRatio * 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void clickIcon() {
    setState(() {
      hiddenPassword = !hiddenPassword;
    });
  }

  void moveToHomeScreen() async {
    var email = emailController.text.toString().trim();
    var password = passwordController.text.toString().trim();
    print("Email: $email, Password: $password");

    // await loginProvider.callLoginApi(email: email, password: password);
    //
    // if (loginProvider.isLoginSuccessful == true) {
    //   Toasts.getSuccessToast(text: "Login Response Successfully");
    // }

    Navigator.pushReplacement(
        context, SlideRightRoute(page: const FindBookingScreen()));
  }
}

extension StringLoginExtensions on String {
  bool validateLoginEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }

  String removeSpaces() {
    return this.replaceAll(' ', '');
  }
}
