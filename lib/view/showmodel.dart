import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

sheet(context) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        decoration: BoxDecoration(
          // color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(
                "Share",
                style: GoogleFonts.poppins(
                  // textStyle: Theme.of(context).textTheme.headline4,
                  color: Color.fromRGBO(109, 110, 114, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              endIndent: 40,
              indent: 40,
              thickness: 1,
            ),
            Container(
              child: Text(
                "Report",
                style: GoogleFonts.poppins(
                  // textStyle: Theme.of(context).textTheme.headline4,
                  color: Color.fromRGBO(109, 110, 114, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              endIndent: 40,
              indent: 40,
              thickness: 1,
            ),
            Container(
              child: Text(
                "Block",
                style: GoogleFonts.poppins(
                  // textStyle: Theme.of(context).textTheme.headline4,
                  color: Color.fromRGBO(109, 110, 114, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
