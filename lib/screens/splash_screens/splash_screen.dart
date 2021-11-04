import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/splash_screens/splash_provider.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashProvider splashProvider;

  @override
  void initState() {
    splashProvider = SplashProvider();
    splashProvider = Provider.of<SplashProvider>(context, listen: false);
    splashProvider.init(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    splashProvider = Provider.of<SplashProvider>(context, listen: true);

    return Scaffold(
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.splashBgImage), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Container(
                width: sizes!.widthRatio * 257.79,
                height: sizes!.heightRatio * 116.15,
                child: Image.asset(Assets.splashLogo),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30.0),
              child: CommonWidgets.getStartButton("Get Started", onPress: () {
                moveToLoginScreen();
              }),
            ),
            SizedBox(
              height: sizes!.heightRatio * 40, // Design size 50
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextView.getRegularTextHeavy(
                      "Request a tow?", Assets.poppinsRegular,
                      color: AppColors.readyToEarnTextColor, lines: 1),
                  SizedBox(
                    width: sizes!.widthRatio * 4,
                  ),
                  TextView.getRegularTextHeavy(
                      "Open the User app", Assets.poppinsRegular,
                      color: AppColors.openTheTruckerAppTextColor, lines: 1),
                ],
              ),
            ),
            SizedBox(
              height: sizes!.heightRatio * 30,
            ),
          ],
        ),
      ),
    );
  }

  void moveToLoginScreen() async {
    Navigator.pushReplacement(
        context, SlideRightRoute(page: const LoginScreen()));
  }
}
