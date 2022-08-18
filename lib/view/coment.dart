import 'package:flutter/material.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';

import '../config/colors.dart';

class Coment_UI extends StatefulWidget {
  const Coment_UI({Key? key}) : super(key: key);

  @override
  State<Coment_UI> createState() => _Coment_UIState();
}

class _Coment_UIState extends State<Coment_UI> {
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
              Icon(
                Icons.comment,
                size: 18,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "1",
                style: TextStyle(color: Colors.white, fontSize: 8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
