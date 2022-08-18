import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';

import '../config/colors.dart';
import '../config/size_config.dart';

class Accecpt_Challenge extends StatefulWidget {
  const Accecpt_Challenge({Key? key}) : super(key: key);

  @override
  State<Accecpt_Challenge> createState() => _Accecpt_ChallengeState();
}

class _Accecpt_ChallengeState extends State<Accecpt_Challenge> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height:
//32
          //  SizeConfig.blockSizeHorizontal! *
          //     32 /
          //     SizeConfig.screenHeight! /
          //     100,
          5.76.hp,
      width: 40.0.wp,
      //  141.62,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Accept Challenge",
        style: GoogleFonts.poppins(
          // textStyle: Theme.of(context).textTheme.headline4,
          color: Color.fromRGBO(255, 255, 255, 1),

          ///size10
          fontSize: 9.5.sp,
          fontWeight: FontWeight.w600,
          // fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
