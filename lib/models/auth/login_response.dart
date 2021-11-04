/// message : "Operation performed successfully"
/// code : 1
/// data : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiSWtyaXMzQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJleHAiOjE2MzYwMTc2ODcsImlzcyI6IlF1aWNrVG93QVBJIn0.TwbRtrjjp0IWb7QwpvNWENvajAKJpVBFqZzHG_fNx3A","user":{"id":"cf6a7798-8908-4cb0-80b3-0c3df9d932ff","createdOn":"2021-11-04T04:06:27.7952828-05:00","firstName":"Ikris","lastName":"Power","phoneNumber":"012-29490239","vehicles":[{"make":"Honda","model":"Civic-x","licensePlateNumber":"LEU-2990","picture":"","transmissionTypeId":1}],"email":"Ikris3@gmail.com","password":"Password@1!"}}

class LoginResponse {
  LoginResponse({
    String? message,
    int? code,
    Data? data,
  }) {
    _message = message;
    _code = code;
    _data = data;
  }

  LoginResponse.fromJson(dynamic json) {
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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiSWtyaXMzQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJleHAiOjE2MzYwMTc2ODcsImlzcyI6IlF1aWNrVG93QVBJIn0.TwbRtrjjp0IWb7QwpvNWENvajAKJpVBFqZzHG_fNx3A"
/// user : {"id":"cf6a7798-8908-4cb0-80b3-0c3df9d932ff","createdOn":"2021-11-04T04:06:27.7952828-05:00","firstName":"Ikris","lastName":"Power","phoneNumber":"012-29490239","vehicles":[{"make":"Honda","model":"Civic-x","licensePlateNumber":"LEU-2990","picture":"","transmissionTypeId":1}],"email":"Ikris3@gmail.com","password":"Password@1!"}

class Data {
  Data({
    String? token,
    User? user,
  }) {
    _token = token;
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  String? _token;
  User? _user;

  String? get token => _token;

  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

/// id : "cf6a7798-8908-4cb0-80b3-0c3df9d932ff"
/// createdOn : "2021-11-04T04:06:27.7952828-05:00"
/// firstName : "Ikris"
/// lastName : "Power"
/// phoneNumber : "012-29490239"
/// vehicles : [{"make":"Honda","model":"Civic-x","licensePlateNumber":"LEU-2990","picture":"","transmissionTypeId":1}]
/// email : "Ikris3@gmail.com"
/// password : "Password@1!"

class User {
  User({
    String? id,
    String? createdOn,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    List<Vehicles>? vehicles,
    String? email,
    String? password,
  }) {
    _id = id;
    _createdOn = createdOn;
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _vehicles = vehicles;
    _email = email;
    _password = password;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _createdOn = json['createdOn'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _phoneNumber = json['phoneNumber'];
    if (json['vehicles'] != null) {
      _vehicles = [];
      json['vehicles'].forEach((v) {
        _vehicles?.add(Vehicles.fromJson(v));
      });
    }
    _email = json['email'];
    _password = json['password'];
  }

  String? _id;
  String? _createdOn;
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  List<Vehicles>? _vehicles;
  String? _email;
  String? _password;

  String? get id => _id;

  String? get createdOn => _createdOn;

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get phoneNumber => _phoneNumber;

  List<Vehicles>? get vehicles => _vehicles;

  String? get email => _email;

  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdOn'] = _createdOn;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['phoneNumber'] = _phoneNumber;
    if (_vehicles != null) {
      map['vehicles'] = _vehicles?.map((v) => v.toJson()).toList();
    }
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }
}

/// make : "Honda"
/// model : "Civic-x"
/// licensePlateNumber : "LEU-2990"
/// picture : ""
/// transmissionTypeId : 1

class Vehicles {
  Vehicles({
    String? make,
    String? model,
    String? licensePlateNumber,
    String? picture,
    int? transmissionTypeId,
  }) {
    _make = make;
    _model = model;
    _licensePlateNumber = licensePlateNumber;
    _picture = picture;
    _transmissionTypeId = transmissionTypeId;
  }

  Vehicles.fromJson(dynamic json) {
    _make = json['make'];
    _model = json['model'];
    _licensePlateNumber = json['licensePlateNumber'];
    _picture = json['picture'];
    _transmissionTypeId = json['transmissionTypeId'];
  }

  String? _make;
  String? _model;
  String? _licensePlateNumber;
  String? _picture;
  int? _transmissionTypeId;

  String? get make => _make;

  String? get model => _model;

  String? get licensePlateNumber => _licensePlateNumber;

  String? get picture => _picture;

  int? get transmissionTypeId => _transmissionTypeId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['make'] = _make;
    map['model'] = _model;
    map['licensePlateNumber'] = _licensePlateNumber;
    map['picture'] = _picture;
    map['transmissionTypeId'] = _transmissionTypeId;
    return map;
  }
}
