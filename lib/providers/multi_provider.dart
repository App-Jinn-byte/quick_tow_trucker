import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_provider.dart';
import 'package:quick_tow_trucker/screens/auth/profile_screens/profile_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/main_home_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/welcome_back_popup_screen/welcome_back_provider.dart';
import 'package:quick_tow_trucker/screens/splash_screens/splash_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<SplashProvider>(
    create: (_) => SplashProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<LoginProvider>(
    create: (_) => LoginProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<MainHomeProvider>(
    create: (_) => MainHomeProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<WelcomeBackProvider>(
    create: (_) => WelcomeBackProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<FindBookingProvider>(
    create: (_) => FindBookingProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<ProfileProvider>(
    create: (_) => ProfileProvider(),
    lazy: true,
  ),
];
