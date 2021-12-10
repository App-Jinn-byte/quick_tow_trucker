import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/toasts.dart';
import 'package:quick_tow_trucker/widgets/common_widgets.dart';

class CompanySupportScreen extends StatefulWidget {
  const CompanySupportScreen({Key? key}) : super(key: key);

  @override
  _CompanySupportScreenState createState() => _CompanySupportScreenState();
}

class _CompanySupportScreenState extends State<CompanySupportScreen> {
  bool senderUser = false;

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
          children: [
            CommonWidgets.getAppBarWithTitleBackButtonAndUserIcon(
                context: context,
                title: "Alan",
                icon: "assets/png/back_btn_icon@2x.png",
                userIcon: "assets/png/avatar_user_icon@2x.png",
                onPress: () {
                  Navigator.pop(context);
                }),
            CommonWidgets.getReceiverMessageContainer(),
            CommonWidgets.getSenderMessageContainer(),
            const Spacer(),
            CommonWidgets.getSendMessageInputContainer(onSendMessagePress: () {
              Toasts.getSuccessToast(text: "Try it Later :) ");
            }),
          ],
        ),
      ),
    ));
  }
}
