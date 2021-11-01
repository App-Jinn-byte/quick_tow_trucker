import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/screens/auth/edit_profile_screens/edit_profile_provider.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_provider.dart';
import 'package:quick_tow_trucker/screens/auth/profile_screens/profile_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/driver_license_screens/driver_license_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/history_screens/booking_history_screens/booking_history_detail_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/history_screens/history_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/insurance_info_screens/insurance_info_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/notification_screens/notification_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/vehicle_details_screens/vehicle_detail_provider.dart';
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
  ChangeNotifierProvider<FindBookingProvider>(
    create: (_) => FindBookingProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<ProfileProvider>(
    create: (_) => ProfileProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<EditProfileProvider>(
    create: (_) => EditProfileProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<HistoryProvider>(
    create: (_) => HistoryProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<BookingHistoryDetailProvider>(
    create: (_) => BookingHistoryDetailProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<NotificationProvider>(
    create: (_) => NotificationProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<VehicleDetailProvider>(
    create: (_) => VehicleDetailProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<DriverLicenseProvider>(
    create: (_) => DriverLicenseProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<InsuranceInfoProvider>(
    create: (_) => InsuranceInfoProvider(),
    lazy: true,
  ),
];
