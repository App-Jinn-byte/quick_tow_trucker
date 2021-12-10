import 'package:quick_tow_trucker/screens/auth/login_screens/login_screen.dart';
import 'package:quick_tow_trucker/screens/get_started_screens/get_started_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/add_service_screens/add_service_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/history_screens/booking_history_screens/booking_history_detail_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/history_screens/history_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/notification_screens/notification_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/account_details_screens/account_detail_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/company_support_screens/company_support_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/edit_profile_screens/edit_profile_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/insurance_info_screens/insurance_info_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/profile_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/update_vehicle_detail_screens/update_vehicle_detail_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/vehicle_detail_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/setting_screens/setting_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/en_route_screens/en_route_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/end_ride_screens/end_ride_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/payment_total_screens/payment_total_screen.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/rating_review_screens/rating_review_screen.dart';

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
  static const String insuranceInfoScreen = '/insuranceInfoScreen';
  static const String messageScreen = '/messageScreen';
  static const String companySupportScreen = '/companySupportScreen';
  static const String enRouteScreen = '/enRouteScreen';
  static const String endRideScreen = '/endRideScreen';
  static const String paymentTotalScreen = '/paymentTotalScreen';
  static const String addServiceScreen = '/addServiceScreen';
  static const String ratingReviewScreen = '/ratingReviewScreen';
  static const String settingScreen = '/settingScreen';
  static const String updateVehicleDetailScreen = '/updateVehicleDetailScreen';
  static const String accountDetailScreen = '/accountDetailScreen';

  static final routes = {
    splash: (context) => const GetStartedScreen(),
    login: (context) => const LoginScreen(),
    findBookingScreen: (context) => const FindBookingScreen(),
    profileScreen: (context) => const ProfileScreen(),
    historyScreen: (context) => const HistoryScreen(),
    bookingHistoryDetailScreen: (context) => const BookingHistoryDetailScreen(),
    notificationScreen: (context) => const NotificationScreen(),
    editProfileScreen: (context) => const EditProfileScreen(),
    vehicleDetailScreen: (context) => const VehicleDetailScreen(),
    insuranceInfoScreen: (context) => const InsuranceInfoScreen(),
    messageScreen: (context) => const CompanySupportScreen(),
    companySupportScreen: (context) => const CompanySupportScreen(),
    enRouteScreen: (context) => const EnRouteScreen(),
    endRideScreen: (context) => const EndRideScreen(),
    paymentTotalScreen: (context) => const PaymentTotalScreen(),
    addServiceScreen: (context) => const AddServiceScreen(),
    ratingReviewScreen: (context) => const RatingReviewScreen(),
    settingScreen: (context) => const SettingScreen(),
    updateVehicleDetailScreen: (context) => const UpdateVehicleDetailScreen(),
    accountDetailScreen: (context) => const AccountDetailScreen(),
  };
}
