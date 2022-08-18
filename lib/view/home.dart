import 'package:flutter/material.dart';
import 'package:verticalandhorizontalscroll/view/pageview.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Video_UI()
          MyHomePage(),
    );
  }
}
