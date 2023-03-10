// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_chat_app/models/ChatMessage.dart';
// import 'package:flutter_chat_app/screens/messages/components/video_full_screen.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:video_player/video_player.dart';
// import 'package:video_thumbnail/video_thumbnail.dart';
//
// import '../../../constants.dart';
//
// class VideoMessage extends StatefulWidget {
//   final ChatMessage? message;
//
//   const VideoMessage({Key? key, this.message}) : super(key: key);
//
//   @override
//   State<VideoMessage> createState() => _VideoMessageState();
// }
//
// class _VideoMessageState extends State<VideoMessage> {
//
//
//
//   @override
//  Widget  build(BuildContext context)   {
//
//     return SizedBox(
//         width: MediaQuery.of(context).size.width * 0.45, // 45% of total width
//         child: AspectRatio(
//           aspectRatio: 1.6,
//           child: widget.message!.messageStatus == MessageStatus.not_sent
//               ? Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.asset("assets/images/Video Place Here.png"),
//                     ),
//                     Container(
//                       height: 25,
//                       width: 25,
//                       decoration: BoxDecoration(
//                         color: kPrimaryColor,
//                         shape: BoxShape.circle,
//                       ),
//                       child: CircularProgressIndicator()
//                     )
//                   ],
//                 )
//               : GestureDetector(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (_) {
//                     return FullScreenVideo(
//                       imageUrl: widget.message!.url,
//
//                     );
//                   }));
//                 },
//                child: Container(
//                  height: 25,
//                  width: 25,
//                  child: Icon(
//                    Icons.play_circle_fill,
//                    size: 70,
//                    color: kPrimaryColor,
//                  ),
//                ) ,
//               ),
//         ));
//   }
// }
