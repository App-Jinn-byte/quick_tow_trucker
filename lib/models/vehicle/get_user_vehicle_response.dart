/// message : "Operation performed successfully"
/// code : 1
/// data : [{"vehicleId":64,"transmissionTypeTitle":"FWD","make":"KIA 2","model":"Sportage 2","licensePlateNumber":"112-QA2","picture":"https://i.ibb.co/LzYRN2w/User1.jpg","transmissionTypeId":2,"userId":"fb6eda06-fcab-4c6e-9b20-f18eab86fa63"},{"vehicleId":66,"transmissionTypeTitle":"AWD","make":"Honda 1","model":"XYZ 1","licensePlateNumber":"YJI-1901","picture":"string","transmissionTypeId":1,"userId":"fb6eda06-fcab-4c6e-9b20-f18eab86fa63"}]

class GetUserVehicleResponse {
  GetUserVehicleResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetUserVehicleResponse.fromJson(dynamic json) {
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

/// vehicleId : 64
/// transmissionTypeTitle : "FWD"
/// make : "KIA 2"
/// model : "Sportage 2"
/// licensePlateNumber : "112-QA2"
/// picture : "https://i.ibb.co/LzYRN2w/User1.jpg"
/// transmissionTypeId : 2
/// userId : "fb6eda06-fcab-4c6e-9b20-f18eab86fa63"

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