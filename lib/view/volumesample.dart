import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:verticalandhorizontalscroll/controller/controller.dart';
import 'package:volume_watcher/volume_watcher.dart';

class Volume_Speaker extends StatefulWidget {
  const Volume_Speaker({Key? key}) : super(key: key);

  @override
  State<Volume_Speaker> createState() => _Volume_SpeakerState();
}

class _Volume_SpeakerState extends State<Volume_Speaker> {
  String _platformVersion = 'Unknown';
  double currentVolume = 0;
  double initVolume = 0;
  double maxVolume = 0;
  Controller Getcontroller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Text("currentvolume=$currentVolume"),
      ],
    );
  }
}
