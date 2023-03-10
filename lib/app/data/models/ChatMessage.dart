import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/data/models/user.dart';

import '../../core/p.dart';

enum ChatMessageType { text, audio, image, video }

enum MessageStatus { not_sent, not_view, viewed }

enum MessageType { text, audio }

class ChatMessage {
  String? text;
  String? roomId;
  String? senderId;
  var url;
  String? timeStamp;
  ChatMessageType? messageType;
  MessageStatus? messageStatus;
  bool? isSender;

  ChatMessage({
    this.text = '',
    this.roomId = '',
    this.senderId = '',
    this.url = '',
    required this.messageType,
    required this.timeStamp,
    required this.messageStatus,
    required this.isSender,
  });
  Map<String, dynamic> toJson() => {
        'text': text,
        'roomId': roomId,
        'senderId': senderId,
        'messageType': messageType,
        'messageStatus': messageStatus,
        'isSender': isSender,
        'url': url,
        'timeStamp': timeStamp
      };
  factory ChatMessage.fromDocument(DocumentSnapshot doc) {
    String text = doc.get('text');
    String roomId = doc.get('roomId');
    String timeStamp = doc.get('timeStamp');
    String senderId = doc.get('senderId');
    String URL = doc.get('url');
    ChatMessageType messageType = EnumToString.fromString(
        ChatMessageType.values, doc.get('messageType'))!;
    // bool isSender = P.auth.User!.value.id == doc.get('senderId') ? true: false;

    MessageStatus messageStatus = EnumToString.fromString(
        MessageStatus.values, doc.get('messageStatus'))!;

    return  ChatMessage(text: text, roomId: roomId, senderId: senderId, messageStatus: messageStatus, messageType: messageType, isSender: true, timeStamp: timeStamp, url: URL);
  }
}
