import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Tags_Hash extends StatefulWidget {
  const Tags_Hash({Key? key}) : super(key: key);

  @override
  State<Tags_Hash> createState() => _Tags_HashState();
}

class _Tags_HashState extends State<Tags_Hash> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "# PhotoShoot",
      style: GoogleFonts.poppins(
        // textStyle: Theme.of(context).textTheme.headline4,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 17,
        fontWeight: FontWeight.w600,
        // fontStyle: FontStyle.italic,
      ),
    );
  }
}
