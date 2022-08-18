import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';

class Tags_Bottom extends StatefulWidget {
  const Tags_Bottom({Key? key}) : super(key: key);

  @override
  State<Tags_Bottom> createState() => _Tags_BottomState();
}

class _Tags_BottomState extends State<Tags_Bottom> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "@ PhotoShoot",
      style: GoogleFonts.poppins(
          // textStyle: Theme.of(context).textTheme.headline4,
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: 1 // fontStyle: FontStyle.italic,
          ),
    );
  }
}
