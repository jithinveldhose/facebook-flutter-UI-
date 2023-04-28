import 'dart:ffi';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  double imageWidth;
  double imageHeight;
  Avatar({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.imageHeight=  50,
    this.imageWidth= 50,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape:BoxShape.circle,
            border: displayBorder ?  Border.all(
              color: Colors.blueAccent,
              width: 3,
            ):Border(),
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              fit: BoxFit.cover,
              width: imageWidth,
              height: imageHeight,
            ),
          ),
        ),
        displayStatus 
            ? Positioned(
                right: 0.1,
                bottom: 0.1,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
