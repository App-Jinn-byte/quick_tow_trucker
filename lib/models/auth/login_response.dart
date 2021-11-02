/// message : "Operation performed successfully"
/// code : 1
/// data : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiZHJpdmVyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkRyaXZlciIsImV4cCI6MTYzNTc4NTY1NywiaXNzIjoiRXJyYW5kc0FQSSJ9.ralpstg8ntDJrXIATbzi3eXeLZ4-fNo5_gTz0o-foXQ","user":{"id":"73c9bf6b-1b30-45ff-94c4-c551274b83c2","createdOn":"2021-11-01T11:20:31.3326545","firstName":"Ali","lastName":"Sir","phoneNumber":"03313238168","email":"driver@gmail.com","password":"Driver123@"}}

class LoginResponse {
  LoginResponse({
      String? message,
      int? code,
      Data? data,}){
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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiZHJpdmVyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkRyaXZlciIsImV4cCI6MTYzNTc4NTY1NywiaXNzIjoiRXJyYW5kc0FQSSJ9.ralpstg8ntDJrXIATbzi3eXeLZ4-fNo5_gTz0o-foXQ"
/// user : {"id":"73c9bf6b-1b30-45ff-94c4-c551274b83c2","createdOn":"2021-11-01T11:20:31.3326545","firstName":"Ali","lastName":"Sir","phoneNumber":"03313238168","email":"driver@gmail.com","password":"Driver123@"}

class Data {
  Data({
      String? token,
      User? user,}){
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

/// id : "73c9bf6b-1b30-45ff-94c4-c551274b83c2"
/// createdOn : "2021-11-01T11:20:31.3326545"
/// firstName : "Ali"
/// lastName : "Sir"
/// phoneNumber : "03313238168"
/// email : "driver@gmail.com"
/// password : "Driver123@"

class User {
  User({
      String? id,
      String? createdOn,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? email,
      String? password,}){
    _id = id;
    _createdOn = createdOn;
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _email = email;
    _password = password;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _createdOn = json['createdOn'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _phoneNumber = json['phoneNumber'];
    _email = json['email'];
    _password = json['password'];
  }
  String? _id;
  String? _createdOn;
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? get id => _id;
  String? get createdOn => _createdOn;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get phoneNumber => _phoneNumber;
  String? get email => _email;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdOn'] = _createdOn;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['phoneNumber'] = _phoneNumber;
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }

}


// class LoginResponse {
//   String? message;
//   int? code;
//   Data? data;
//
//   LoginResponse({this.message, this.code, this.data});
//
//   LoginResponse.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     code = json['code'];
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['message'] = this.message;
//     data['code'] = this.code;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }
//
// class Data {
//   String? token;
//   User? user;
//
//   Data({this.token, this.user});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['token'] = this.token;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }
// }
//
// class User {
//   String? id;
//   String? createdOn;
//   String? firstName;
//   String? lastName;
//   String? phoneNumber;
//   String? email;
//   String? password;
//
//   User(
//       {this.id,
//         this.createdOn,
//         this.firstName,
//         this.lastName,
//         this.phoneNumber,
//         this.email,
//         this.password});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     createdOn = json['createdOn'];
//     firstName = json['firstName'];
//     lastName = json['lastName'];
//     phoneNumber = json['phoneNumber'];
//     email = json['email'];
//     password = json['password'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['createdOn'] = this.createdOn;
//     data['firstName'] = this.firstName;
//     data['lastName'] = this.lastName;
//     data['phoneNumber'] = this.phoneNumber;
//     data['email'] = this.email;
//     data['password'] = this.password;
//     return data;
//   }
// }