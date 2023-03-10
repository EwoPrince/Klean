import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/data/models/Chat.dart';
import '../../data/models/user.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';

import '../../../routes/pages.dart';
import '../../core/p.dart';

class MessageScreen  extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  void initState() {
    // TODO: implement initState
    P.message.getFollowers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    User item = Null as User;
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(
        title: "Chats",
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:    Obx(
    () =>
        P.message.loading.value ==true?
            Center( child: CircularProgressIndicator(),):
        Column(
          children: [
          //  for( User element in P.message.following!)
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.CHAT, arguments: Chat(
                  // name: element.name,
                  // id: element.username,
                  // image: element.email,


                ));
              },
              child:

              ListTile(

                leading:    GestureDetector(

                  child: ClipOval(
                    child: Image.network(
                        // element .email,
                        "_",

                    width: 51,
                    height: 51,
                    fit: BoxFit.cover,

                    ),
                  ),
                ),
                title:  Text(
                //  element.name,
                "name is supp",

                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                ),
                subtitle:     Text(
                  'Available',

                  style: TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
