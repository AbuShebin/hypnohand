import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/global_variables/global_variables.dart';
import '../../core/theme/pallete.dart';

class Performence extends StatefulWidget {
  const Performence({super.key});

  @override
  State<Performence> createState() => _PerformenceState();
}

class _PerformenceState extends State<Performence> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEFECE8),
      body: Column(
        children: [
          Container(
            height: h * 0.08,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: w * 0.04),
                Text(
                  "Performance",
                  style: TextStyle(
                      fontSize: h * 0.023,
                      color: Palette.blackColor,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.info_circle,
                  size: h * 0.024,
                ),
                SizedBox(width: w * 0.04),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: h * 0.01),
                  child: Container(
                    width: w,
                    height: h * 0.33,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              "https://i.ytimg.com/vi/lgZn2A-bDWE/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBR4y-w7vnQPyoib6WekSfVYrshXQ",
                              width: w,
                              height: h * 0.25,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              width: w,
                              height: h * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                              ),
                              child: Icon(
                                CupertinoIcons.play_circle,
                                color: Colors.white,
                                size: w * 0.1,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: h * 0.08,
                          child: Row(
                            children: [
                              SizedBox(width: w * 0.02),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://yt3.googleusercontent.com/_zVxlJFcYeTS0VaMNcC6VXGykmOpsdT8F-VuQzBHYTLXB2b7XP38OlOJGE_i9DL3qSnTBeYx=s900-c-k-c0x00ffffff-no-rj"),
                                radius: h * 0.025,
                              ),
                              SizedBox(width: w * 0.02),
                              Container(
                                width: w * 0.8,
                                child: Text(
                                  "Mentalism & Mind reading Online Course - Dinner Table Routine Clip - Hypnohand Academy",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: h * 0.017,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
