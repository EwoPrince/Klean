// mport 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_chat_app/models/ChatMessage.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import '../../../constants.dart';
// import 'full_screen.dart';
//
// class imageMessage extends StatelessWidget {
//   final ChatMessage? message;
//
//   const imageMessage({Key? key, this.message}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.45, // 45% of total width
//       child: AspectRatio(
//         aspectRatio: 1.6,
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             message?.messageStatus == MessageStatus.not_sent
//                 ? ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image(
//                       image: FileImage(message!.url),
//                       width: 100,
//                     ),
//                   )
//                 : GestureDetector(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (_) {
//                         return FullScreenImage(
//                           imageUrl: message!.url,
//                           tag: message!.url,
//                         );
//                       }));
//                     },
//                     child: Hero(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: CachedNetworkImage(
//                           imageUrl: message!.url,
//                           fit: BoxFit.fill,
//                           progressIndicatorBuilder:
//                               (context, url, downloadProgress) =>
//                                   CircularProgressIndicator(
//                                       value: downloadProgress.progress),
//                           errorWidget: (context, url, error) =>
//                               Icon(Icons.error),
//                         ),
//                       ),
//                       tag: message!.url,
//                     ),
//                   ),
//             message?.messageStatus == MessageStatus.not_sent
//                 ? Container(
//                     height: 25,
//                     width: 25,
//                     decoration: BoxDecoration(
//                       color: kPrimaryColor,
//                       shape: BoxShape.circle,
//                     ),
//                     child: CircularProgressIndicator(),
//                   )
//                 : Container()
//           ],
//         ),
//       ),
//     );
//   }
// }
