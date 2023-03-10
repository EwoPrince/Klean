import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/p.dart';
import '../../core/utils/responses.dart';
import '../../data/models/ChatMessage.dart';
import '../../data/models/user.dart' as U;
import '../../data/provider/firebase_service.dart';
import '../auth_module/repository.dart';

class MessageController extends GetxController {
  RxBool loading = false.obs;
  List<User>? following = <User>[].obs;
  Responses _responses = Responses();
  TextEditingController messageController = TextEditingController();
  List<ChatMessage> data = <ChatMessage>[].obs;
  RxBool textMessage = false.obs;
  void getFollowers() async {
    loading.value = true;
    print('true');
    following = <User>[].obs;

    // print(_responses.message);
  }

  void sendText(roomId, senderId) {
    ChatMessage chatMessage = ChatMessage(
        messageType: ChatMessageType.text,
        messageStatus: MessageStatus.not_sent,
        isSender: true,
        timeStamp: DateTime.now().millisecondsSinceEpoch.toString(),
        text: messageController.text,
        roomId: roomId,
        senderId: senderId);
    data.add(chatMessage);
    messageController.text = "";
    print(chatMessage.text);
    addTextMessage(chatMessage);
  }

  void getMessage(roomId) {
    print('i was here');
    try {
      Stream<QuerySnapshot> streamNumbers =
          listenNumbers(roomId) as Stream<QuerySnapshot<Object?>>;

      streamNumbers.listen((snapshot) {
        List<ChatMessage> da = [];
        snapshot.docs.forEach((doc) {
          da.add(ChatMessage.fromDocument(doc));
        });
        print(data);
        data.assignAll(da);
      });
    } catch (e) {
      print(e);
    }
  }

  void onTextChange() {
    messageController.text == ""
        ? textMessage.value = false
        : textMessage.value = true;
  }
}
