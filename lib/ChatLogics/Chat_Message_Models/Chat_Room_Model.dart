import 'package:uuid/uuid.dart';

class ChatRoomModel {
  List<dynamic> userIds = [];
  String? lastmessage;
  String? timeStampOfLastMessage;
  String? id;

  Map<String, dynamic> toJson() => {
        'userIds': this.userIds,
        'id': this.id,
        'lastmessage': this.lastmessage,
        'timeStampOfLastMessage': this.timeStampOfLastMessage
      };

  ChatRoomModel({String? usersOneId, String? userTwoId}) {
    //if id is null then assign it to UniqueKey otherwise leave as it is
    this.id = id ??= Uuid().v1();
    this.userIds.add(usersOneId);
    this.userIds.add(userTwoId);
    this.lastmessage = "";
    this.timeStampOfLastMessage = "";
  }

  fromJson(dynamic parsedJson) {
    this.userIds = parsedJson['userIds'] ?? '';
    this.id = parsedJson['id'] ?? '';
    this.lastmessage = parsedJson['lastmessage'] ?? '';
    this.timeStampOfLastMessage = parsedJson['timeStampOfLastMessage'] ?? '';
  }
}
