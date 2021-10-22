import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/welcome_back_popup_screen/welcome_back_screen.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool isValidEmail;
  late bool isValidPassword;
  late bool isValidForgetEmail;

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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.appBgImage), fit: BoxFit.fill)),
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
                    placeHolder: "Example@Gmail.Com",
                    icon: "assets/png/email_icon@2x.png",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress),
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
                child: CommonWidgets.customTextFieldWithCustomContainerIcon(
                    placeHolder: "******",
                    icon: "assets/png/password_icon@2x.png",
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

  void moveToHomeScreen() async {
    var email = emailController.text.toString().trim();
    var password = passwordController.text.toString().trim();
    print("Email: $email, Password: $password");

    Navigator.push(context, SlideRightRoute(page: const WelcomeBackScreen()));
  }
}
