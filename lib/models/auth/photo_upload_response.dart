/// message : "Operation performed successfully"
/// code : 1
/// data : "http://quicktow.jinnbytedev.com/Files/ProfilePicture/254518520_4495234980511802_1246121167384244951_n11172021005251.jpg"

class PhotoUploadResponse {
  PhotoUploadResponse({
      String? message, 
      int? code, 
      String? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  PhotoUploadResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    _data = json['data'];
  }
  String? _message;
  int? _code;
  String? _data;

  String? get message => _message;
  int? get code => _code;
  String? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    map['data'] = _data;
    return map;
  }

}