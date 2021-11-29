import 'package:flutter/material.dart';
import 'package:quick_tow_trucker/animations/slide_right.dart';
import 'package:quick_tow_trucker/local_cache/utils.dart';
import 'package:quick_tow_trucker/res/assets.dart';
import 'package:quick_tow_trucker/res/colors.dart';
import 'package:quick_tow_trucker/res/res.dart';
import 'package:quick_tow_trucker/res/strings.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/profile_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/setting_screens/setting_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/widgets/text_views.dart';
import '../screens/main_home_screens/drawer_menu_screens/history_screens/history_screen.dart';
import '../screens/main_home_screens/drawer_menu_screens/notification_screens/notification_screen.dart';

class CommonDrawerBar {
  static Widget getDrawerBar(
      {required BuildContext context, @required int? isCurrentScreen}) {
    String _firstName =
        PreferenceUtils.getString(Strings.loginFirstName) ?? "Alan";
    String _lastName =
        PreferenceUtils.getString(Strings.loginLastName) ?? "Thor";
    String _email =
        PreferenceUtils.getString(Strings.loginEmail) ?? "Ala@gmail.com";

    final dynamic _userPhoto = PreferenceUtils.getUserImage();
    bool isImageUrl = Uri.tryParse(_userPhoto!)?.hasAbsolutePath ?? false;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizes!.heightRatio * 45,
                    width: sizes!.widthRatio * 45,
                    child: CircleAvatar(
                      backgroundImage: isImageUrl
                          ? NetworkImage(_userPhoto!)
                          : const AssetImage(
                              "assets/png/photo@2x.png",
                            ) as ImageProvider,
                      radius: 50.0,
                      backgroundColor: AppColors.transparentColor,
                    ),
                  ),
                  SizedBox(
                    width: sizes!.widthRatio * 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sizes!.heightRatio * 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView.getSubHeadingTextWith15(
                            _firstName + " " + _lastName, Assets.poppinsMedium,
                            color: AppColors.blackTextColor,
                            lines: 1,
                            fontWeight: FontWeight.bold),
                        TextView.getRegular13Text(_email, Assets.poppinsRegular,
                            color: AppColors.blackTextColor, lines: 1)
                      ],
                    ),
                  )
                ],
              )),
          ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: TextView.getDrawerMenuText13("Home", Assets.poppinsMedium,
                  color: AppColors.blackTextColor, lines: 1),
            ),
            leading: Image.asset(
              "assets/png/home_icon@2x.png",
              height: sizes!.heightRatio * 32,
              width: sizes!.widthRatio * 32,
            ),
            onTap: () {
              if (isCurrentScreen == 1) {
                Navigator.pop(context);
              } else {
                // Navigator.pop(context);
                Navigator.pushReplacement(
                    context, SlideRightRoute(page: const FindBookingScreen()));
              }
            },
          ),
          const Divider(),
          ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: TextView.getDrawerMenuText13(
                  "Profile", Assets.poppinsMedium,
                  color: AppColors.blackTextColor, lines: 1),
            ),
            leading: Image.asset(
              "assets/png/profile_icon@2x.png",
              height: sizes!.heightRatio * 32,
              width: sizes!.widthRatio * 32,
            ),
            onTap: () {
              if (isCurrentScreen == 2) {
                Navigator.pop(context);
              } else {
                // Navigator.pop(context);
                Navigator.pushReplacement(
                    context, SlideRightRoute(page: const ProfileScreen()));
              }
            },
          ),
          const Divider(),
          ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: TextView.getDrawerMenuText13(
                  "Notification", Assets.poppinsMedium,
                  color: AppColors.blackTextColor, lines: 1),
            ),
            leading: Image.asset(
              "assets/png/notification_icon@2x.png",
              height: sizes!.heightRatio * 32,
              width: sizes!.widthRatio * 32,
            ),
            onTap: () {
              if (isCurrentScreen == 3) {
                Navigator.pop(context);
              } else {
                // Navigator.pop(context);
                Navigator.pushReplacement(
                    context, SlideRightRoute(page: const NotificationScreen()));
              }
            },
          ),
          const Divider(),
          ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: TextView.getDrawerMenuText13(
                  "History", Assets.poppinsMedium,
                  color: AppColors.blackTextColor, lines: 1),
            ),
            leading: Image.asset(
              "assets/png/history_drawer_icon@2x.png",
              height: sizes!.heightRatio * 32,
              width: sizes!.widthRatio * 32,
            ),
            onTap: () {
              if (isCurrentScreen == 4) {
                Navigator.pop(context);
              } else {
                // Navigator.pop(context);
                Navigator.pushReplacement(
                    context, SlideRightRoute(page: const HistoryScreen()));
                //  TODO: Kindly double-check Push Replacement
              }
            },
          ),
          const Divider(),
          ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: TextView.getDrawerMenuText13(
                  "Settings", Assets.poppinsMedium,
                  color: AppColors.blackTextColor, lines: 1),
            ),
            leading: Image.asset(
              "assets/png/setting_icon@2x.png",
              height: sizes!.heightRatio * 32,
              width: sizes!.widthRatio * 32,
            ),
            onTap: () {
              if (isCurrentScreen == 5) {
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
                Navigator.pushReplacement(
                    context, SlideRightRoute(page: const SettingScreen()));

                //  TODO: Kindly double-check Push Replacement
              }
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
