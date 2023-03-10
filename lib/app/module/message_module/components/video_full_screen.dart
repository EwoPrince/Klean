//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
//
// import '../../../custom_appbar.dart';
//
// class FullScreenVideo extends StatefulWidget {
//   final String imageUrl;
//
//
//   const FullScreenVideo({Key? key, required this.imageUrl, }) : super(key: key);
//
//   @override
//   State<FullScreenVideo> createState() => _FullScreenVideoState();
// }
//
// class _FullScreenVideoState extends State<FullScreenVideo> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//         widget.imageUrl)
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {
//
//         });
//       });
//     _controller.play();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         title: Text(
//           'Video',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.w300,
//           ),
//         ),
//         leading: new IconButton(
//           icon: new Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             _controller.pause();
//             Get.back();
//           },
//         ),
//
//         elevation: 0,
//       ),
//       backgroundColor: Colors.black87,
//       body: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: VideoPlayer(_controller),
//         )
//             : Container(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _controller.value.isPlaying
//                 ? _controller.pause()
//                 : _controller.play();
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }