import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/data.dart';
import 'package:volume_watcher/volume_watcher.dart';

class Mute_Options extends StatefulWidget {
  Mute_Options({Key? key, this.intindex, this.intindex_1}) : super(key: key);
  var intindex;
  var intindex_1;
  @override
  State<Mute_Options> createState() => _Mute_OptionsState();
}

class _Mute_OptionsState extends State<Mute_Options> {
  var mute = Icon(Icons.volume_off);
  var unmute = Icon(Icons.volume_up_rounded);
  bool volume = false;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: H_V_both[widget.intindex][widget.intindex_1]['type'] != "image"
            ? true
            : false,
        child: IconButton(
          onPressed: () {
            setState(() {
              if (volume == false) {
                volume = true;
                Getcontroller.controller!.setVolume(1.0);
              } else {
                volume = false;
                Getcontroller.controller!.setVolume(0);
              }
            });
          },
          icon: volume == true ? unmute : mute,
        ));
  }
}
