import 'package:quick_tow_trucker/screens/auth/edit_profile_screens/edit_profile_screen.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/auth/profile_screens/profile_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/history_screens/booking_history_screens/booking_history_detail_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/history_screens/history_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/insurance_info_screens/insurance_info_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/notification_screens/notification_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/vehicle_details_screens/vehicle_detail_screen.dart';
import 'package:quick_tow_trucker/screens/splash_screens/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String profileScreen = '/profileScreen';

  // sub-screens
  static const String findBookingScreen = '/findBookingScreen';
  static const String notificationScreen = '/notificationScreen';

  static const String historyScreen = '/historyScreen';
  static const String bookingHistoryDetailScreen =
      '/bookingHistoryDetailScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String vehicleDetailScreen = '/vehicleDetailScreen';
  static const String insuranceInfoScreen = '/vehicleDetailScreen';

  static final routes = {
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
    findBookingScreen: (context) => const FindBookingScreen(),
    profileScreen: (context) => const ProfileScreen(),
    historyScreen: (context) => const HistoryScreen(),
    bookingHistoryDetailScreen: (context) => const BookingHistoryDetailScreen(),
    notificationScreen: (context) => const NotificationScreen(),
    editProfileScreen: (context) => const EditProfileScreen(),
    vehicleDetailScreen: (context) => const VehicleDetailScreen(),
    insuranceInfoScreen: (context) => const InsuranceInfoScreen(),
  };
}
