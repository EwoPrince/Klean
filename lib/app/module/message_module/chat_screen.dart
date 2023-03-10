import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:klean/app/data/models/Chat.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';


import '../../core/p.dart';
import '../../data/models/ChatMessage.dart';
import 'components/chat_input_field.dart';
import 'components/message.dart';

class ChatScreen extends StatefulWidget {
  Chat item = Get.arguments;
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

@override

  void initState() {
    // TODO: implement initState
    var roomid ='';


    // if (P.auth.userModel!.value.id!.compareTo(widget.item.id) > 0) {
    //   roomid = P.auth.userModel!.value.id!+'-'+widget.item.id;
    // } else {
    //   roomid = widget.item.id+'-'+P.auth.userModel!.value.id!;
    // }
    P.message.getMessage(roomid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Chat",
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                      () =>  ListView.builder(
                    itemCount: P.message.data.obs.length,
                    reverse: false,
                    itemBuilder: (context, index) =>
                        Message(message:  P.message.data[index]),
                  ),
                ),
              )),
          ChatInputField(chat: widget.item,),
        ],
      ),

    );
  }
}
