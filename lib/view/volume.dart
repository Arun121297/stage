import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:volume_watcher/volume_watcher.dart';

class Volumn_Old_Code extends StatefulWidget {
  @override
  _Volumn_Old_CodeState createState() => _Volumn_Old_CodeState();
}

class _Volumn_Old_CodeState extends State<Volumn_Old_Code> {
  String _platformVersion = 'Unknown';
  double currentVolume = 0;
  double initVolume = 0;
  double maxVolume = 0;
  VideoPlayerController? _controller;
  @override
  void initState() {
    super.initState();
    initPlatformState();
    _controller = VideoPlayerController.asset(
      'image/VID-20220612-WA0022.mp4',
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    )..initialize();

    _controller!.play();
    _controller!.setVolume(0.0);
    _controller?.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      VolumeWatcher.hideVolumeView = true;
      platformVersion = await VolumeWatcher.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    double initVolume = 0;
    double maxVolume = 0;
    try {
      initVolume = await VolumeWatcher.getCurrentVolume;
      maxVolume = await VolumeWatcher.getMaxVolume;
    } on PlatformException {
      platformVersion = 'Failed to get volume.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      this.initVolume = initVolume;
      this.maxVolume = maxVolume;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(
        //   home:
        //   Scaffold(
        // body:
        SizedBox(
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // AspectRatio(
            //   aspectRatio: _controller!.value.aspectRatio,
            //   child: VideoPlayer(_controller!),
            // ),
            VolumeWatcher(
              onVolumeChangeListener: (double volume) {
                setState(() {
                  currentVolume = volume;
                });
              },
            ),
            Text("PlatformVersion=$_platformVersion"),
            Text("MaxVolume=$maxVolume"),
            Text("initvolume=$initVolume"),
            Container(
              // height: 20,
              color: Colors.white,
              child: Text(
                "currentvolume=$currentVolume",
                style: TextStyle(color: Colors.black),
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  VolumeWatcher.setVolume(maxVolume * 0.5);
                });
              },
              child: Text("increase volume to${maxVolume * 0.5}"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  VolumeWatcher.setVolume(maxVolume * 0.0);
                });
              },
              child: Text("Decrease volume to${maxVolume * 0.0}"),
            ),
          ]),
      // ),
      // ),
    );
  }
}
