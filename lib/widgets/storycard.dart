import 'package:facebook_application/assets.dart';
import 'package:facebook_application/widgets/avatar.dart';
import 'package:facebook_application/widgets/circularbutton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  String labelText;
  String story;
  String avatar;
  bool creatStory;
  bool displayBorder;
  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.creatStory = false,
    this.displayBorder= false
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(story),  fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: creatStory
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {},
                  )
                : Avatar(displayImage: avatar,
                 displayStatus: false,
                 displayBorder: displayBorder,
                imageHeight: 35,
                imageWidth: 35,
                 ),
          ),
           Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : 'N/A' ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
