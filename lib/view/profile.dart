import 'package:flutter/material.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Profile_UI extends StatefulWidget {
  const Profile_UI({Key? key}) : super(key: key);

  @override
  State<Profile_UI> createState() => _Profile_UIState();
}

class _Profile_UIState extends State<Profile_UI> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 23.0.sp,
          child: CircleAvatar(
            radius: 22.0.sp,
            backgroundImage: ExactAssetImage("images/profileimage.jpg"),
          )),
    );
  }
}
