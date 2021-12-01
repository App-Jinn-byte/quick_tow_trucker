/// message : "Operation performed successfully"
/// code : 1
/// data : [{"requestId":1,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":0.0,"fromLng":0.0,"toLat":0.0,"toLng":0.0,"requestId":1}]},{"requestId":2,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":0.0,"fromLng":0.0,"toLat":0.0,"toLng":0.0,"requestId":2}]},{"requestId":3,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":0.0,"fromLng":0.0,"toLat":0.0,"toLng":0.0,"requestId":3}]},{"requestId":4,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":31.4645898,"fromLng":74.3895386,"toLat":0.0,"toLng":0.0,"requestId":4}]},{"requestId":5,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":0.0,"fromLng":0.0,"toLat":0.0,"toLng":0.0,"requestId":5}]},{"requestId":6,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":0.0,"fromLng":0.0,"toLat":0.0,"toLng":0.0,"requestId":6}]},{"requestId":7,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":32.3362936,"fromLng":74.36751679999999,"toLat":0.0,"toLng":0.0,"requestId":7}]},{"requestId":8,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":31.4646023,"fromLng":74.3895396,"toLat":0.0,"toLng":0.0,"requestId":8}]},{"requestId":9,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":null,"locations":[{"fromLat":32.2660879,"fromLng":74.65530749999999,"toLat":0.0,"toLng":0.0,"requestId":9}]},{"requestId":10,"userId":"e0288382-a474-40af-aabb-38cb6a11d243","userFirstName":"User","userLastName":"01","serviceTypesTitle":"Request A Tow","vehicleId":2,"ratings":0.0,"vehicleMake":"KIA","vehicleModel":"abc","vehicleLicensePlateNumber":"190-AB","vehicleTransmissionTypeId":"1","vehicleAddtionalNotes":"null\"","locations":[{"fromLat":33.7410564,"fromLng":73.0976393,"toLat":0.0,"toLng":0.0,"requestId":10}]}]

class GetAllBookingListResponse {
  GetAllBookingListResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetAllBookingListResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _message;
  int? _code;
  List<Data>? _data;

  String? get message => _message;
  int? get code => _code;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// requestId : 1
/// userId : "e0288382-a474-40af-aabb-38cb6a11d243"
/// userFirstName : "User"
/// userLastName : "01"
/// serviceTypesTitle : "Request A Tow"
/// vehicleId : 2
/// ratings : 0.0
/// vehicleMake : "KIA"
/// vehicleModel : "abc"
/// vehicleLicensePlateNumber : "190-AB"
/// vehicleTransmissionTypeId : "1"
/// vehicleAddtionalNotes : null
/// locations : [{"fromLat":0.0,"fromLng":0.0,"toLat":0.0,"toLng":0.0,"requestId":1}]

class Data {
  Data({
      int? requestId, 
      String? userId, 
      String? userFirstName, 
      String? userLastName, 
      String? serviceTypesTitle, 
      int? vehicleId, 
      double? ratings, 
      String? vehicleMake, 
      String? vehicleModel, 
      String? vehicleLicensePlateNumber, 
      String? vehicleTransmissionTypeId, 
      dynamic vehicleAddtionalNotes, 
      List<Locations>? locations,}){
    _requestId = requestId;
    _userId = userId;
    _userFirstName = userFirstName;
    _userLastName = userLastName;
    _serviceTypesTitle = serviceTypesTitle;
    _vehicleId = vehicleId;
    _ratings = ratings;
    _vehicleMake = vehicleMake;
    _vehicleModel = vehicleModel;
    _vehicleLicensePlateNumber = vehicleLicensePlateNumber;
    _vehicleTransmissionTypeId = vehicleTransmissionTypeId;
    _vehicleAddtionalNotes = vehicleAddtionalNotes;
    _locations = locations;
}

  Data.fromJson(dynamic json) {
    _requestId = json['requestId'];
    _userId = json['userId'];
    _userFirstName = json['userFirstName'];
    _userLastName = json['userLastName'];
    _serviceTypesTitle = json['serviceTypesTitle'];
    _vehicleId = json['vehicleId'];
    _ratings = json['ratings'];
    _vehicleMake = json['vehicleMake'];
    _vehicleModel = json['vehicleModel'];
    _vehicleLicensePlateNumber = json['vehicleLicensePlateNumber'];
    _vehicleTransmissionTypeId = json['vehicleTransmissionTypeId'];
    _vehicleAddtionalNotes = json['vehicleAddtionalNotes'];
    if (json['locations'] != null) {
      _locations = [];
      json['locations'].forEach((v) {
        _locations?.add(Locations.fromJson(v));
      });
    }
  }
  int? _requestId;
  String? _userId;
  String? _userFirstName;
  String? _userLastName;
  String? _serviceTypesTitle;
  int? _vehicleId;
  double? _ratings;
  String? _vehicleMake;
  String? _vehicleModel;
  String? _vehicleLicensePlateNumber;
  String? _vehicleTransmissionTypeId;
  dynamic _vehicleAddtionalNotes;
  List<Locations>? _locations;

  int? get requestId => _requestId;
  String? get userId => _userId;
  String? get userFirstName => _userFirstName;
  String? get userLastName => _userLastName;
  String? get serviceTypesTitle => _serviceTypesTitle;
  int? get vehicleId => _vehicleId;
  double? get ratings => _ratings;
  String? get vehicleMake => _vehicleMake;
  String? get vehicleModel => _vehicleModel;
  String? get vehicleLicensePlateNumber => _vehicleLicensePlateNumber;
  String? get vehicleTransmissionTypeId => _vehicleTransmissionTypeId;
  dynamic get vehicleAddtionalNotes => _vehicleAddtionalNotes;
  List<Locations>? get locations => _locations;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['requestId'] = _requestId;
    map['userId'] = _userId;
    map['userFirstName'] = _userFirstName;
    map['userLastName'] = _userLastName;
    map['serviceTypesTitle'] = _serviceTypesTitle;
    map['vehicleId'] = _vehicleId;
    map['ratings'] = _ratings;
    map['vehicleMake'] = _vehicleMake;
    map['vehicleModel'] = _vehicleModel;
    map['vehicleLicensePlateNumber'] = _vehicleLicensePlateNumber;
    map['vehicleTransmissionTypeId'] = _vehicleTransmissionTypeId;
    map['vehicleAddtionalNotes'] = _vehicleAddtionalNotes;
    if (_locations != null) {
      map['locations'] = _locations?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// fromLat : 0.0
/// fromLng : 0.0
/// toLat : 0.0
/// toLng : 0.0
/// requestId : 1

class Locations {
  Locations({
      double? fromLat, 
      double? fromLng, 
      double? toLat, 
      double? toLng, 
      int? requestId,}){
    _fromLat = fromLat;
    _fromLng = fromLng;
    _toLat = toLat;
    _toLng = toLng;
    _requestId = requestId;
}

  Locations.fromJson(dynamic json) {
    _fromLat = json['fromLat'];
    _fromLng = json['fromLng'];
    _toLat = json['toLat'];
    _toLng = json['toLng'];
    _requestId = json['requestId'];
  }
  double? _fromLat;
  double? _fromLng;
  double? _toLat;
  double? _toLng;
  int? _requestId;

  double? get fromLat => _fromLat;
  double? get fromLng => _fromLng;
  double? get toLat => _toLat;
  double? get toLng => _toLng;
  int? get requestId => _requestId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fromLat'] = _fromLat;
    map['fromLng'] = _fromLng;
    map['toLat'] = _toLat;
    map['toLng'] = _toLng;
    map['requestId'] = _requestId;
    return map;
  }

}