import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';
import 'package:verticalandhorizontalscroll/view/showmodel.dart';

import '../config/colors.dart';

class Options_UI extends StatefulWidget {
  const Options_UI({Key? key}) : super(key: key);

  @override
  State<Options_UI> createState() => _Options_UIState();
}

class _Options_UIState extends State<Options_UI> {
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
          child: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () => sheet(context),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
// 109, 110, 114, 1