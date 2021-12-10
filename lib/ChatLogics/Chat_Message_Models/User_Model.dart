import 'package:uuid/uuid.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? imageUrl;

  UserModel({this.name, this.imageUrl, this.email}) {
    this.id = id ??= Uuid().v1();
  }

  Map<String, dynamic> toJson() => {
        'id': this.id,
        'name': this.name,
        'imageUrl': this.imageUrl,
        'email': this.email,
      };

  fromJson(dynamic parsedJson) {
    this.id = parsedJson['id'] ?? '';
    this.name = parsedJson['name'] ?? '';
    this.email = parsedJson['email'] ?? '';
    this.imageUrl = parsedJson['imageUrl'] ?? '';
  }
}
