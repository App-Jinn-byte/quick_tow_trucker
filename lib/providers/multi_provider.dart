import 'package:provider/provider.dart';
import 'package:quick_tow_trucker/screens/auth/login_screens/login_provider.dart';
import 'package:quick_tow_trucker/screens/get_started_screens/get_started_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/add_service_screens/add_service_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/history_screens/booking_history_screens/booking_history_detail_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/history_screens/history_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/notification_screens/notification_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/account_details_screens/account_detail_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/company_support_screens/message_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/driver_license_screens/driver_license_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/edit_profile_screens/edit_profile_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/insurance_info_screens/insurance_info_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/profile_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/update_vehicle_detail_screens/update_vehicle_detail_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/profile_screens/vehicle_details_screens/vehicle_detail_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/drawer_menu_screens/setting_screens/setting_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/en_route_screens/en_route_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/end_ride_screens/end_ride_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/find_booking_screens/find_booking_provider.dart';
import 'package:quick_tow_trucker/screens/main_home_screens/rating_review_screens/rating_review_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<GetStartedProvider>(
    create: (_) => GetStartedProvider(),
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
  ChangeNotifierProvider<UpdateVehicleDetailProvider>(
    create: (_) => UpdateVehicleDetailProvider(),
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
  ChangeNotifierProvider<MessageProvider>(
    create: (_) => MessageProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<EnRouteProvider>(
    create: (_) => EnRouteProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<EndRideProvider>(
    create: (_) => EndRideProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<AddServiceProvider>(
    create: (_) => AddServiceProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<RatingReviewProvider>(
    create: (_) => RatingReviewProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<SettingProvider>(
    create: (_) => SettingProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<AccountDetailProvider>(
    create: (_) => AccountDetailProvider(),
    lazy: true,
  ),
];
