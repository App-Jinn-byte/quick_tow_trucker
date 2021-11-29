import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/splash_screens/splash_provider.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

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
              child: SizedBox(
                width: sizes!.widthRatio * 257.79,
                height: sizes!.heightRatio * 116.15,
                child: Image.asset("assets/png/updated_splash_logo@2x.png"),
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
              height: sizes!.heightRatio * 80,
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
