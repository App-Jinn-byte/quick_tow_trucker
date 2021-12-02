// api urls
const String baseUrl = "https://quicktow.jinnbytedev.com";
const String loginApiUrl = "$baseUrl/api/Account/LoginDriver/";
const String editProfileApiUrl = "$baseUrl/api/Account/UpdateDriver";
const String editProfilePhotoUploadApiUrl =
    "$baseUrl/api/Account/UploadProfile/";

// Vehicle
const String getVehicleByUserIdApiUrl =
    "$baseUrl/api/Vehicle/GetVehiclesByUserId/";
const String updateVehicleApiUrl = "$baseUrl/api/Vehicle/UpdateVehicle";
const String deleteVehicleApiUrl = "$baseUrl/api/Vehicle/DeleteVehicle/";

//Booking
const String getAllBookingListApiUrl = "$baseUrl/api/Request/GetAll/";
const String bookingAcceptedApiUrl = "$baseUrl/api/Request/AcceptRequest/";
const String bookingRejectedApiUrl = "$baseUrl/api/Request/RejectRequest/";
