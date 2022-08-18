import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verticalandhorizontalscroll/config/colors.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';

class Follow_UI extends StatefulWidget {
  const Follow_UI({Key? key}) : super(key: key);

  @override
  State<Follow_UI> createState() => _Follow_UIState();
}

class _Follow_UIState extends State<Follow_UI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.0.wp,
      height: 3.0.hp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: primary, width: 2),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        "Follow",
        style: GoogleFonts.poppins(
          // textStyle: Theme.of(context).textTheme.headline4,
          color: primary,
          fontSize: 8,
          fontWeight: FontWeight.w600,
          // fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
