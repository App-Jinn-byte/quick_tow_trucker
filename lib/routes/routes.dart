import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/auth/profile_screens/profile_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/main_home_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/welcome_back_popup_screen/welcome_back_screen.dart';
import 'package:quick_tow_trucker/screens/splash_screens/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signupPersonal = '/signupPersonal';
  static const String signupVehicle = '/signupVehicle';
  static const String signupPayment = '/signupPayment';
  static const String mainHomeScreen = '/mainHomeScreen';
  static const String welcomeBackScreen = '/welcomeBackScreen';
  static const String findBookingScreen = '/findBookingScreen';
  static const String profileScreen = '/profileScreen';

  static final routes = {
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
    mainHomeScreen: (context) => const MainHomeScreen(),
    welcomeBackScreen: (context) => const WelcomeBackScreen(),
    findBookingScreen: (context) => const FindBookingScreen(),
    profileScreen: (context) => const ProfileScreen(),
  };
}
