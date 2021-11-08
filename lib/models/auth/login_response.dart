/// message : "Operation performed successfully"
/// code : 1
/// data : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiZHJpdmVyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkRyaXZlciIsImV4cCI6MTYzNjM4MjQ4MywiaXNzIjoiUXVpY2tUb3dBUEkifQ.0MZdMhTcjFSSRhfME2wS_-e64DR1dtTsYh1CXEp9hkg","user":{"id":"b03de875-0643-48da-b26c-ec7fcbf1f1ea","createdOn":"2021-11-08T16:37:09.2402032","firstName":"Driver","lastName":"Test","phoneNumber":"90233023021090","profilePhoto":"https://i.ibb.co/LzYRN2w/User1.jpg","email":"driver@gmail.com","password":"123Qw#"}}

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiZHJpdmVyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkRyaXZlciIsImV4cCI6MTYzNjM4MjQ4MywiaXNzIjoiUXVpY2tUb3dBUEkifQ.0MZdMhTcjFSSRhfME2wS_-e64DR1dtTsYh1CXEp9hkg"
/// user : {"id":"b03de875-0643-48da-b26c-ec7fcbf1f1ea","createdOn":"2021-11-08T16:37:09.2402032","firstName":"Driver","lastName":"Test","phoneNumber":"90233023021090","profilePhoto":"https://i.ibb.co/LzYRN2w/User1.jpg","email":"driver@gmail.com","password":"123Qw#"}

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

/// id : "b03de875-0643-48da-b26c-ec7fcbf1f1ea"
/// createdOn : "2021-11-08T16:37:09.2402032"
/// firstName : "Driver"
/// lastName : "Test"
/// phoneNumber : "90233023021090"
/// profilePhoto : "https://i.ibb.co/LzYRN2w/User1.jpg"
/// email : "driver@gmail.com"
/// password : "123Qw#"

class User {
  User({
    String? id,
    String? createdOn,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? profilePhoto,
    String? email,
    String? password,
  }) {
    _id = id;
    _createdOn = createdOn;
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _profilePhoto = profilePhoto;
    _email = email;
    _password = password;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _createdOn = json['createdOn'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _phoneNumber = json['phoneNumber'];
    _profilePhoto = json['profilePhoto'];
    _email = json['email'];
    _password = json['password'];
  }

  String? _id;
  String? _createdOn;
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  String? _profilePhoto;
  String? _email;
  String? _password;

  String? get id => _id;

  String? get createdOn => _createdOn;

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get phoneNumber => _phoneNumber;

  String? get profilePhoto => _profilePhoto;

  String? get email => _email;

  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdOn'] = _createdOn;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['phoneNumber'] = _phoneNumber;
    map['profilePhoto'] = _profilePhoto;
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }
}
