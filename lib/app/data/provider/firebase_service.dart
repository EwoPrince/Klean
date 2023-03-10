
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/ChatMessage.dart';



Future<String> uploadFile(File _image) async {
  Reference ref = FirebaseStorage.instance.ref().child('posts/${_image.path}');
  UploadTask uploadTask = ref.putFile(_image);
  final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
  final url = await taskSnapshot.ref.getDownloadURL();

  return url;
}

Future<String> uploadProfile(File _image) async {
  Reference ref = FirebaseStorage.instance.ref().child('profile/${_image.path}');
  UploadTask uploadTask = ref.putFile(_image);
  final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
  final url = await taskSnapshot.ref.getDownloadURL();

  return url;
}
Future<void> addTextMessage(ChatMessage chatMessage) {
  print(chatMessage.messageStatus);
  CollectionReference users = FirebaseFirestore.instance
      .collection('chatroom')
      .doc(chatMessage.roomId)
      .collection(chatMessage.roomId!);
  return users
      .add({
    'url': chatMessage.url,
    'text': chatMessage.text,
    'roomId': chatMessage.roomId,
    'senderId': chatMessage.senderId,
    'messageType': EnumToString.convertToString(ChatMessageType.text),
    'messageStatus': EnumToString.convertToString(MessageStatus.not_view),
    'isSender': chatMessage.isSender,
    'timeStamp': chatMessage.timeStamp,
  })
      .then((value) => print("message sent"))
      .catchError((error) => print("Failed to send: $error"));
}
Stream<QuerySnapshot> getStreamFireStore(String pathCollection, int limit) {
  return FirebaseFirestore.instance
      .collection(pathCollection)
      .limit(limit)
      .snapshots();
}

Stream<QuerySnapshot<Object?>> listenNumbers(roomid) {
  Stream<QuerySnapshot> streamNumbers = FirebaseFirestore.instance
      .collection('chatroom')
      .doc(roomid)
      .collection(roomid)
      .orderBy('timeStamp', descending: false)
      .snapshots();
  return streamNumbers;
}


