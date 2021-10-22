// api urls
const String baseUrl = "https://maktabq-api.jinnbytedev.com";
const String signUpApiUrl = "$baseUrl/api/app/account/Register";
const String loginApiUrl = "$baseUrl/api/app/account/login";
const String forgotPasswordApiUrl =
    "$baseUrl/api/app/account/ForgotPassword?email={email}";
const String editProfileApiUrl = "$baseUrl/api/app/user/UpdateProfile";
const String uploadProfilePictureApiUrl =
    "$baseUrl/api/app/user/UploadUserImage";
const String getFeaturesApiUrl = "$baseUrl/api/app/features/get";
const String saveFeaturesApiUrl = "$baseUrl/api/app/user/SaveFeatures";
const String getWalletApiUrl = "$baseUrl/api/app/wallet/GetWallet?";

// Mark: Tayyab - Rate Business
const String postRateBusinessApiUrl = "$baseUrl/api/app/booking/rateBusiness";
const String bookingApiUrl = "$baseUrl/api/app/booking/GetBusinesses?";
const String scheduleBookingApiUrl = "$baseUrl/api/app/booking/ScheduleBooking";
const String checkInBookingApiUrl = "$baseUrl/api/app/booking/CheckIn";
const String getMyBookingsApiUrl = "$baseUrl/api/app/booking/MyBookings?";
const String bookingDetailApiUrl = "$baseUrl/api/app/booking/MyBooking?";
const String socialLoginApiUrl = "$baseUrl/api/app/account/SocialLogin";

const String eventDetailApiUrl =
    "$baseUrl/api/app/events/GetEvent?"; //eventId={eventId}
const String eventsApiUrl = "$baseUrl/api/app/events/GetData?";

const String subscribePlanApiUrl =
    "$baseUrl/api/app/subscriptions/SubscribePlan";
const String getUserSubscriptionPlanApiUrl =
    "$baseUrl/api/app/subscriptions/GetUserSubscriptionPlan?";

// Api's
const String homeApiUrl = "$baseUrl/api/app/home/GetData";
const String offersApiUrl = "$baseUrl/api/app/offers/GetData";
const String queryApiUrl = "$baseUrl/api/app/query/savequery";
const String subscriptionOffersApiUrl =
    "$baseUrl/api/app/subscriptions/getSubscriptions";
const String vouchersApiUrl = "$baseUrl/api/app/vouchers/getVouchers";
const String notificationApiUrl =
    "$baseUrl/api/app/Notifications/GetNotifications?userId={userId}";
const String workSpaceApiUrl =
    "$baseUrl/api/app/booking/GetBusiness?"; //businessId={businessId}
const String availableSlotsApiUrl =
    "$baseUrl/api/app/booking/GetAvailableSlots?";
const String categoriesApiUrl = "$baseUrl/api/app/categories/GetCategories";
const String introApiUrl = "$baseUrl/api/app/Intro/Intro";
