import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: Center(
        child: BetterPlayer.network(
          "https://static.videezy.com/system/resources/previews/000/043/143/original/lights_go.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            looping: true,
          ),
        ),
      ),
    );
  }
}
