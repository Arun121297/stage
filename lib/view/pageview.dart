import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verticalandhorizontalscroll/config/colors.dart';
import 'package:verticalandhorizontalscroll/config/extension.dart';
import 'package:verticalandhorizontalscroll/controller/controller.dart';
import 'package:verticalandhorizontalscroll/view/Tags.dart';

import 'package:verticalandhorizontalscroll/view/acceptchallange.dart';
import 'package:verticalandhorizontalscroll/view/coment.dart';
import 'package:verticalandhorizontalscroll/view/like.dart';
import 'package:verticalandhorizontalscroll/view/mute.dart';
import 'package:verticalandhorizontalscroll/view/options.dart';
import 'package:verticalandhorizontalscroll/view/profile.dart';
import 'package:verticalandhorizontalscroll/view/videoplayer.dart';
import 'package:verticalandhorizontalscroll/view/volume.dart';
import 'package:verticalandhorizontalscroll/view/volumesample.dart';

import '../model/data.dart';
import 'BottomTagsName.dart';
import 'follow.dart';
import 'profilename.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Controller Getcontroller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    // List H_V_both = [
    //   Getcontroller.image1,
    //   Getcontroller.image2,
    //   Getcontroller.image3
    // ];
    // List TagsList = [
    //   Getcontroller.Tags1,
    //   Getcontroller.Tags2,
    //   Getcontroller.Tags3
    // ];
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: H_V_both.length,
            itemBuilder: (context, index) {
              return PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: H_V_both[index].length,
                itemBuilder: (context, nestindex) {
                  return Stack(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: H_V_both[index][nestindex]['type'] != "image"
                          ? Video_Player(
                              urls: H_V_both[index][nestindex]['url']!,
                            )
                          : Image.asset(H_V_both[index][nestindex]['url']!,
                              fit: BoxFit.cover),
                    ),

                    ////slider
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 70),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1.0.hp,
                            width: 48.0.wp,
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Visibility(
                            visible: index == 2 ? false : true,
                            child: Container(
                              height: 1.0.hp,
                              width: 28.0.wp,
                              decoration: BoxDecoration(
                                color: options,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //// need to change (Give a condition)
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 45, top: 30),
                      child: nextTags(index, nestindex),
                    ),

                    ///Tags and mute options

                    Container(
                      margin: EdgeInsets.only(top: 40, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mainTags(index, nestindex),
                          Mute_Options(
                            intindex: index,
                            intindex_1: nestindex,
                          )
                        ],
                      ),
                    ),

                    ///profile like coment options
                    sideoption(),

                    ///bottom
                    bottom(),

                    // Volume_Speaker()
                    // Volumn_Old_Code()
                  ]);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget mainTags(index, nestindex) {
  return Text(
    TagsList[index][nestindex],
    style: GoogleFonts.poppins(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget nextTags(index, nestindex) {
  return Text(
    index == 2 ? "" : "${TagsList[index + 1][nestindex]}",
    style: GoogleFonts.poppins(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 9,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget sideoption() {
  return Align(
    alignment: Alignment.centerRight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Profile_UI(),
        Like_UI(),
        Coment_UI(),
        Options_UI(),
        SizedBox(
          height: 9.0.hp,
        )
      ],
    ),
  );
}

Widget bottom() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 46.0, left: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Profile_Name_UI(),
            VerticalDivider(
              color: Colors.transparent,
              width: 12,
            ),
            Follow_UI(),
          ],
        ),
        Tags_Bottom(),
        SizedBox(
          height: 15,
        ),
        Accecpt_Challenge()
      ],
    ),
  );
}
