// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// void main() => runApp(VideoPlayerApp());

// class VideoPlayerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GeeksForGeeks',
//       home: VideoPlayerScreen(),
//     );
//   }
// }

// class VideoPlayerScreen extends StatefulWidget {
//   VideoPlayerScreen({Key? key}) : super(key: key);

//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//     );
//     _initializeVideoPlayerFuture = _controller.initialize();

//     // _controller.setLooping(true);

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GeeksForGeeks'),
//         backgroundColor: Colors.green,
//       ),
//       body: FutureBuilder(
//         future: _initializeVideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return GestureDetector(
//               onTap: () {
//                 if (_controller.value.isPlaying) {
//                   _controller.pause();
//                 } else {
//                   // play
//                   _controller.play();
//                 }
//               },
//               child: AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               ),
//             );
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       // floatingActionButton: FloatingActionButton(
// onPressed: () {
//   setState(() {
//     // pause
//     if (_controller.value.isPlaying) {
//       _controller.pause();
//     } else {
//       // play
//       _controller.play();
//     }
//   });
// },
//       //   // icon
//       //   child: Icon(
//       //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//       //   ),
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:verticalandhorizontalscroll/view/SeparateNavi.dart';
import 'package:verticalandhorizontalscroll/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home:
          //  Navigate_List_Index()
          Home(),
    );
  }
}
