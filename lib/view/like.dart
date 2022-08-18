import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';
import 'package:verticalandhorizontalscroll/controller/controller.dart';

import '../config/colors.dart';

class Like_UI extends StatefulWidget {
  const Like_UI({Key? key}) : super(key: key);

  @override
  State<Like_UI> createState() => _Like_UIState();
}

class _Like_UIState extends State<Like_UI> {
  // Controller controller =Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 21.0.sp,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundColor: options,
          radius: 20.0.sp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // controller.icons()
              Icon(
                Icons.favorite,
                size: 18,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "14",
                style: TextStyle(color: Colors.white, fontSize: 8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
