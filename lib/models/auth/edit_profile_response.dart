/// message : "Operation performed successfully"
/// code : 1
/// data : {"id":"78cee717-0cf9-40cf-b8e7-9dd77695eaaf","firstName":"Driver","lastName":"102","phoneNumber":"90233023021090","profilePhoto":"string","email":"Driver101@jinnbyte.com","password":"123Qw##"}

class EditProfileResponse {
  EditProfileResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  EditProfileResponse.fromJson(dynamic json) {
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

/// id : "78cee717-0cf9-40cf-b8e7-9dd77695eaaf"
/// firstName : "Driver"
/// lastName : "102"
/// phoneNumber : "90233023021090"
/// profilePhoto : "string"
/// email : "Driver101@jinnbyte.com"
/// password : "123Qw##"

class Data {
  Data({
      String? id, 
      String? firstName, 
      String? lastName, 
      String? phoneNumber, 
      String? profilePhoto, 
      String? email, 
      String? password,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _profilePhoto = profilePhoto;
    _email = email;
    _password = password;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _phoneNumber = json['phoneNumber'];
    _profilePhoto = json['profilePhoto'];
    _email = json['email'];
    _password = json['password'];
  }
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  String? _profilePhoto;
  String? _email;
  String? _password;

  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get phoneNumber => _phoneNumber;
  String? get profilePhoto => _profilePhoto;
  String? get email => _email;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['phoneNumber'] = _phoneNumber;
    map['profilePhoto'] = _profilePhoto;
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }

}