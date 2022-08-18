import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Controller extends GetxController {
  TextEditingController Tags1_controller = TextEditingController();
  TextEditingController Tags2_controller = TextEditingController();
  TextEditingController Tags3_controller = TextEditingController();
  // double currentVolume = 0;
  var image1 = [
    {"type": "image", "url": "images/list1_0.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0022.mp4"},
    {"type": "image", "url": "images/list1_1.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0023.mp4"},
    {"type": "image", "url": "images/list1_2.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0025.mp4"},
    {"type": "image", "url": "images/list1_3.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0028.mp4"},
  ];
  var image2 = [
    {"type": "image", "url": "images/list2_0.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0022.mp4"},
    {"type": "image", "url": "images/list2_1.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0023.mp4"},
    {"type": "image", "url": "images/list2_2.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0025.mp4"},
    {"type": "image", "url": "images/list2_3.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0028.mp4"},
  ];
  var image3 = [
    {"type": "image", "url": "images/list3_0.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0022.mp4"},
    {"type": "image", "url": "images/list3_1.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0023.mp4"},
    {"type": "image", "url": "images/list3_2.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0025.mp4"},
    {"type": "image", "url": "images/list1_3.jpg"},
    {"type": "video", "url": "images/VID-20220612-WA0028.mp4"},
  ];
  List Tags1 = [
    "# PhotoShoot",
    "# PhotoShoot",
    "# PhotoShoot",
    "# PhotoShoot",
    "# PhotoShoot",
    "# PhotoShoot",
    "# PhotoShoot",
    "# PhotoShoot",
  ];
  List Tags2 = [
    "# Nature",
    "# Nature",
    "# Nature",
    "# Nature",
    "# Nature",
    "# Nature",
    "# Nature",
    "# Nature",
  ];
  List Tags3 = [
    "# SuperHeros",
    "# SuperHeros",
    "# SuperHeros",
    "# SuperHeros",
    "# SuperHeros",
    "# SuperHeros",
    "# SuperHeros",
    "# SuperHeros",
  ];
  VideoPlayerController? controller;
  // txtfield1() {
  //   return TextField(
  //     controller: Tags1_controller,
  //     onSubmitted: (value) {
  //       Tags1.value = value as int;
  //     },
  //     keyboardType: TextInputType.number,
  //     decoration: const InputDecoration(
  //       labelText: "# Tags - 1",
  //       hintText: '                                    # Tags - 1',
  //     ),
  //   );
  // }

  // txtfield2() {
  //   return TextField(
  //     controller: Tags2_controller,
  //     onSubmitted: (value) {
  //       Tags2.value = value as int;
  //     },
  //     keyboardType: TextInputType.number,
  //     decoration: const InputDecoration(
  //       labelText: "# Tags - 1",
  //       hintText: '                                    # Tags - 1',
  //     ),
  //   );
  // }

  // txtfield3() {
  //   return TextField(
  //     controller: Tags3_controller,
  //     onSubmitted: (value) {
  //       Tags3.value = value as int;
  //     },
  //     keyboardType: TextInputType.number,
  //     decoration: const InputDecoration(
  //       labelText: "# Tags - 1",
  //       hintText: '                                    # Tags - 1',
  //     ),
  //   );
  // }

  // icons(Icon name, Size size, Color color) {
  //   return Icon(
  //     Icons.favorite,
  //     size: 12,
  //     color: Colors.white,
  //   );
  // }
}
