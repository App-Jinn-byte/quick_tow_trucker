import 'package:flutter/material.dart';

class MessagesModel {
  String? message;
  String? senderId;
  String? roomId;
  String? timeStamp;

  MessagesModel(
      {@required String? senderId,
      @required String? msg,
      @required String? roomId}) {
    this.message = msg;
    this.senderId = senderId;
    this.roomId = roomId;
    this.timeStamp = DateTime.now().toString();
  }

  Map<String, dynamic> toJson() => {
        'message': this.message,
        'senderId': this.senderId,
        'roomId': this.roomId,
        'timeStamp': this.timeStamp
      };

  fromJson(dynamic parsedJson) {
    this.message = parsedJson['message'] ?? '';
    this.senderId = parsedJson['senderId'] ?? '';
    this.roomId = parsedJson['roomId'] ?? '';
    this.timeStamp = parsedJson['timeStamp'] ?? '';
  }
}
