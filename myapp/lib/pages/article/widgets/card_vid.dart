import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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
    final videoId = widget.videoId;
    _controller.cueVideoById(videoId: videoId);

  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: YoutubePlayerScaffold(
        controller: _controller,
        aspectRatio: 16 / 9,
        builder: (BuildContext context, Widget player) {
          return Column(
          children: [
            player,
          ],
        );
        },
      ),
    );
  }
}
