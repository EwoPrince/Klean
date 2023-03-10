import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:klean/app/core/theme/color_theme.dart';


import '../../../core/p.dart';
import '../../../data/models/Chat.dart';

class ChatInputField extends StatefulWidget {
  final Chat chat;
  const ChatInputField({
    Key? key, required this.chat,
  }) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  var roomid = '';
  @override
  void initState() {
    // TODO: implement initState
    P.message.messageController.addListener(() {
      P.message.onTextChange();
    });

    // if (P.auth.userModel!.value.id!.compareTo(widget.chat.id) > 0) {
    //   roomid = P.auth.userModel!.value.id!+'-'+widget.chat.id;
    // } else {
    //   roomid = widget.chat.id+'-'+P.auth.userModel!.value.id!;
    // }
    super.initState();
  }

  void _modalBottomSheetMenu(){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        context: context,
        builder: (builder){
          return Container(
            height: 200.0,
            color: Colors.transparent,
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               GestureDetector(
                 onTap: (){
                  // P.message.getImage(roomid, P.auth.users.uid);
                   Get.back();
                 },
                 child: Row(
                   children: const [
                     Icon(Icons.image, color: KleanAppColors.primaryBrandBase),
                     Padding(
                       padding: EdgeInsets.all(15.0),
                       child: Text('Select image',   style: TextStyle(fontSize: 18,  fontWeight:  FontWeight.w400,),),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
               Divider(height: 1,),
               SizedBox(height: 10,),
               GestureDetector(
                 onTap: (){
                  // P.message.getVideo(roomid, P.auth.users.uid);
                 },
                 child: Row(

                   children: [
                     Icon(Icons.video_collection, color:KleanAppColors.primaryBrandBase),

                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Text('Select video',   style: TextStyle(fontSize: 18, fontWeight:  FontWeight.w400,),),
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),

          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10 / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
       child:   Row(
            children: [
              GestureDetector(
                onTap: (){
                //  P.message.messageType.value = false;


                },
                child: Icon(Icons.mic, color: KleanAppColors.primaryBrandBase),
              ),

              SizedBox(width: 10),
              Expanded(
                child:    Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color:KleanAppColors.greyBase.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.sentiment_satisfied_alt_outlined,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.64),
                      ),
                      SizedBox(width:10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type message",
                            border: InputBorder.none,
                          ),
                     controller: P.message.messageController,
                        ),
                      ),

                      GestureDetector(
                        onTap: (){

                          P.message.sendText(roomid, Null, );
                        },
                        child:  Icon(
                          Icons.send,

                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color!
                              .withOpacity(0.64),
                        ) ,
                      )

                    ],
                  ),
                )),

            ],
          )

       ),
    );
  }
}
