import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

class InsuranceInfoScreen extends StatefulWidget {
  const InsuranceInfoScreen({Key? key}) : super(key: key);

  @override
  _InsuranceInfoScreenState createState() => _InsuranceInfoScreenState();
}

class _InsuranceInfoScreenState extends State<InsuranceInfoScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: sizes!.heightRatio * 30.0,
              ),
              CommonWidgets.getAppBarWithoutContainerTitle24AndBackButton(
                  context: context,
                  title: "Insurance Info",
                  icon: "assets/png/back_btn_icon@2x.png",
                  onPress: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
