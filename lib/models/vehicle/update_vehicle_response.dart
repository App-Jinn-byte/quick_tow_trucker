/// message : "Operation performed successfully"
/// code : 1
/// data : {"vehicleId":73,"transmissionTypeTitle":"FWD","make":"Hyduai","model":"XYZ","licensePlateNumber":"KKK-190","picture":"https://i.ibb.co/LzYRN2w/User1.jpg","transmissionTypeId":2,"userId":"25bebcf5-bb26-4e10-b03b-4a5e53063050"}

class UpdateVehicleResponse {
  UpdateVehicleResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  UpdateVehicleResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  int? _code;
  Data? _data;

  String? get message => _message;
  int? get code => _code;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// vehicleId : 73
/// transmissionTypeTitle : "FWD"
/// make : "Hyduai"
/// model : "XYZ"
/// licensePlateNumber : "KKK-190"
/// picture : "https://i.ibb.co/LzYRN2w/User1.jpg"
/// transmissionTypeId : 2
/// userId : "25bebcf5-bb26-4e10-b03b-4a5e53063050"

class Data {
  Data({
      int? vehicleId, 
      String? transmissionTypeTitle, 
      String? make, 
      String? model, 
      String? licensePlateNumber, 
      String? picture, 
      int? transmissionTypeId, 
      String? userId,}){
    _vehicleId = vehicleId;
    _transmissionTypeTitle = transmissionTypeTitle;
    _make = make;
    _model = model;
    _licensePlateNumber = licensePlateNumber;
    _picture = picture;
    _transmissionTypeId = transmissionTypeId;
    _userId = userId;
}

  Data.fromJson(dynamic json) {
    _vehicleId = json['vehicleId'];
    _transmissionTypeTitle = json['transmissionTypeTitle'];
    _make = json['make'];
    _model = json['model'];
    _licensePlateNumber = json['licensePlateNumber'];
    _picture = json['picture'];
    _transmissionTypeId = json['transmissionTypeId'];
    _userId = json['userId'];
  }
  int? _vehicleId;
  String? _transmissionTypeTitle;
  String? _make;
  String? _model;
  String? _licensePlateNumber;
  String? _picture;
  int? _transmissionTypeId;
  String? _userId;

  int? get vehicleId => _vehicleId;
  String? get transmissionTypeTitle => _transmissionTypeTitle;
  String? get make => _make;
  String? get model => _model;
  String? get licensePlateNumber => _licensePlateNumber;
  String? get picture => _picture;
  int? get transmissionTypeId => _transmissionTypeId;
  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vehicleId'] = _vehicleId;
    map['transmissionTypeTitle'] = _transmissionTypeTitle;
    map['make'] = _make;
    map['model'] = _model;
    map['licensePlateNumber'] = _licensePlateNumber;
    map['picture'] = _picture;
    map['transmissionTypeId'] = _transmissionTypeId;
    map['userId'] = _userId;
    return map;
  }

}