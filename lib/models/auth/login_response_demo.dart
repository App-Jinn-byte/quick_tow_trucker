/// Message : "Operation performed successfully"
/// Code : 1
/// Data : {"UserId":258,"Name":"Thor","Email":"thor@gmail.com","Phone":"123-124-122","Password":"123456","ProfilePicture":"/Files/ProfilePicture/image_picker3947672805234375332.jpg","UserTypeId":5,"UserType":"User","DeviceId":"111","Subscription":[{"UserSubscriptionId":7,"SubscriptionId":3,"SubscriptionPlan":"Basic","Status":"Expired","ExpiryDate":"2021-10-10T08:57:37.103"}]}

class LoginResponseDemo {
  LoginResponseDemo({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  LoginResponseDemo.fromJson(dynamic json) {
    _message = json['Message'];
    _code = json['Code'];
    _data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
  }
  String? _message;
  int? _code;
  Data? _data;

  String? get message => _message;
  int? get code => _code;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Message'] = _message;
    map['Code'] = _code;
    if (_data != null) {
      map['Data'] = _data?.toJson();
    }
    return map;
  }

}

/// UserId : 258
/// Name : "Thor"
/// Email : "thor@gmail.com"
/// Phone : "123-124-122"
/// Password : "123456"
/// ProfilePicture : "/Files/ProfilePicture/image_picker3947672805234375332.jpg"
/// UserTypeId : 5
/// UserType : "User"
/// DeviceId : "111"
/// Subscription : [{"UserSubscriptionId":7,"SubscriptionId":3,"SubscriptionPlan":"Basic","Status":"Expired","ExpiryDate":"2021-10-10T08:57:37.103"}]

class Data {
  Data({
      int? userId, 
      String? name, 
      String? email, 
      String? phone, 
      String? password, 
      String? profilePicture, 
      int? userTypeId, 
      String? userType, 
      String? deviceId, 
      List<Subscription>? subscription,}){
    _userId = userId;
    _name = name;
    _email = email;
    _phone = phone;
    _password = password;
    _profilePicture = profilePicture;
    _userTypeId = userTypeId;
    _userType = userType;
    _deviceId = deviceId;
    _subscription = subscription;
}

  Data.fromJson(dynamic json) {
    _userId = json['UserId'];
    _name = json['Name'];
    _email = json['Email'];
    _phone = json['Phone'];
    _password = json['Password'];
    _profilePicture = json['ProfilePicture'];
    _userTypeId = json['UserTypeId'];
    _userType = json['UserType'];
    _deviceId = json['DeviceId'];
    if (json['Subscription'] != null) {
      _subscription = [];
      json['Subscription'].forEach((v) {
        _subscription?.add(Subscription.fromJson(v));
      });
    }
  }
  int? _userId;
  String? _name;
  String? _email;
  String? _phone;
  String? _password;
  String? _profilePicture;
  int? _userTypeId;
  String? _userType;
  String? _deviceId;
  List<Subscription>? _subscription;

  int? get userId => _userId;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get password => _password;
  String? get profilePicture => _profilePicture;
  int? get userTypeId => _userTypeId;
  String? get userType => _userType;
  String? get deviceId => _deviceId;
  List<Subscription>? get subscription => _subscription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserId'] = _userId;
    map['Name'] = _name;
    map['Email'] = _email;
    map['Phone'] = _phone;
    map['Password'] = _password;
    map['ProfilePicture'] = _profilePicture;
    map['UserTypeId'] = _userTypeId;
    map['UserType'] = _userType;
    map['DeviceId'] = _deviceId;
    if (_subscription != null) {
      map['Subscription'] = _subscription?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// UserSubscriptionId : 7
/// SubscriptionId : 3
/// SubscriptionPlan : "Basic"
/// Status : "Expired"
/// ExpiryDate : "2021-10-10T08:57:37.103"

class Subscription {
  Subscription({
      int? userSubscriptionId, 
      int? subscriptionId, 
      String? subscriptionPlan, 
      String? status, 
      String? expiryDate,}){
    _userSubscriptionId = userSubscriptionId;
    _subscriptionId = subscriptionId;
    _subscriptionPlan = subscriptionPlan;
    _status = status;
    _expiryDate = expiryDate;
}

  Subscription.fromJson(dynamic json) {
    _userSubscriptionId = json['UserSubscriptionId'];
    _subscriptionId = json['SubscriptionId'];
    _subscriptionPlan = json['SubscriptionPlan'];
    _status = json['Status'];
    _expiryDate = json['ExpiryDate'];
  }
  int? _userSubscriptionId;
  int? _subscriptionId;
  String? _subscriptionPlan;
  String? _status;
  String? _expiryDate;

  int? get userSubscriptionId => _userSubscriptionId;
  int? get subscriptionId => _subscriptionId;
  String? get subscriptionPlan => _subscriptionPlan;
  String? get status => _status;
  String? get expiryDate => _expiryDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserSubscriptionId'] = _userSubscriptionId;
    map['SubscriptionId'] = _subscriptionId;
    map['SubscriptionPlan'] = _subscriptionPlan;
    map['Status'] = _status;
    map['ExpiryDate'] = _expiryDate;
    return map;
  }

}