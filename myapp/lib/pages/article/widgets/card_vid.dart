import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:pod_player/pod_player.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CardVid extends StatefulWidget {
  final String videoId;
  final double width = 330;
  final double height = 220;
  const CardVid({super.key, required this.videoId, width, height});

  @override
  State<CardVid> createState() => _CardVidState();
}

class _CardVidState extends State<CardVid> {
// To control the youtube video functionality
  final _controller = YoutubePlayerController(
    params: YoutubePlayerParams(
      mute: false,
      showControls: true,
      showFullscreenButton: true,
    ),
  );
  @override
  void initState() {
    super.initState();
    // TO load a video by its unique id
    _controller.cueVideoById(videoId: widget.videoId);
  }

  @override
  Widget build(BuildContext context) {
    return
      YoutubePlayerScaffold(
      controller: _controller,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return Column(
          children: [
            player,
          ],
        );
      },
    );
  }
//   late YoutubePlayerController _controller;
//   bool isFullScreen = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: widget.videoId,
//       flags: YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//       ),
//     );
//     // _controller.toggleFullScreenMode();
//     _controller.addListener(() {
//       if (_controller.value.isFullScreen != isFullScreen) {
//         setState(() {
//           isFullScreen = _controller.value.isFullScreen;
//         });
//       }
//     });
//
//
//   }
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       YoutubePlayerBuilder(
//           onExitFullScreen: () {
//             // SystemChrome.setPreferredOrientations(DeviceOrientation.values);
//             SystemChrome.setPreferredOrientations([
//               DeviceOrientation.portraitUp,
//               DeviceOrientation.portraitDown,
//             ]);
//             setState(() {
//               isFullScreen = false;
//             });
//           },
//           onEnterFullScreen: () {
//             SystemChrome.setPreferredOrientations([
//               DeviceOrientation.landscapeLeft,
//               DeviceOrientation.landscapeRight,
//             ]);
//             setState(() {
//               isFullScreen = true;
//             });
//           },
//           player: YoutubePlayer(
//             controller: _controller,
//             showVideoProgressIndicator: true,
//
//           ),
//           builder: (context, player) =>
//               Scaffold(
//                 body: ListView(
//                   children: [
//                     player,
//                   ],
//                 ),
//               )
//
//
//     );
//   }
//   late final PodPlayerController controller;
//
//   @override
//   void initState() {
//     controller = PodPlayerController(
//       playVideoFrom: PlayVideoFrom.youtube('AIeOHiQvlCQ'),
//       podPlayerConfig: PodPlayerConfig(
//         autoPlay: false,
//         videoQualityPriority: [1080, 720, 480, 360],
//       ),
//
//     )..initialise();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: widget.width,
//       height: widget.height,
//       child: PodVideoPlayer(controller: controller),
//     );
//   }
}