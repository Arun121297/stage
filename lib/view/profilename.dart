import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Name_UI extends StatefulWidget {
  const Profile_Name_UI({Key? key}) : super(key: key);

  @override
  State<Profile_Name_UI> createState() => _Profile_Name_UIState();
}

class _Profile_Name_UIState extends State<Profile_Name_UI> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Profilename",
      style: GoogleFonts.poppins(
        // textStyle: Theme.of(context).textTheme.headline4,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 15,
        fontWeight: FontWeight.w600,
        // fontStyle: FontStyle.italic,
      ),
    );
  }
}
