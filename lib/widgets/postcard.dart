import 'package:facebook_application/sections/headerbutton.dart';
import 'package:facebook_application/widgets/avatar.dart';
import 'package:facebook_application/widgets/bluetick.dart';
import 'package:facebook_application/widgets/headbutton.dart';
import 'package:flutter/material.dart';

class PostCArad extends StatelessWidget {
  String avatar;
  String name;
  String postedOn;
  String postText;
  String image;
  bool showBlueTick;
  String like;
  String comment;
  String share;
  PostCArad(
      {required this.avatar,
      required this.name,
      required this.postedOn,
      this.postText = '',
      required this.image,
      this.showBlueTick = false,
      required this.like,
      required this.comment,
      required this.share,
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(), 
          postTitle(), 
          postImage(),
           footerSection(),
           Divider(
            color: Colors.grey[300],
            thickness: 3,
      
           ),
           HeaderButttonSection(
            buttonOne: headerbutton(
              buttontext: 'like', 
              buttonIcon: Icons.thumb_up_alt_outlined, 
              buttonColor: Color.fromARGB(255, 104, 103, 103), 
              buttonAction: (){}), 
            buttonTwo: headerbutton(
              buttontext: 'comment', 
              buttonIcon: Icons.message_outlined, 
              buttonColor:Color.fromARGB(255, 104, 103, 103), 
              buttonAction: (){}),
               buttonThree: headerbutton(
              buttontext: 'share', 
              buttonIcon: Icons.share_outlined, 
              buttonColor: Color.fromARGB(255, 104, 103, 103), 
              buttonAction: (){}),
              )
           ],
      ),
    );
  }

  Widget postImage() {
    return Container(
      width: 500,
      padding: EdgeInsets.only(top: 5),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget postTitle() {
    return
    postText != null && postText != '' ?
    Container(
      padding: EdgeInsets.only(bottom: 5,right: 10,left: 10),
      child: Text(
        postText == null ? '' : postText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ):SizedBox();
  }

  Widget footerSection() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: like)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: comment),
                SizedBox(
                  width: 3,
                ),
                displayText(label: 'comment'),
                SizedBox(
                  width: 10,
                ),
                displayText(label: share),
                SizedBox(
                  width: 3,
                ),
                displayText(label: 'share'),
                SizedBox(
                  width: 5,
                ),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  imageHeight: 25,
                  imageWidth: 25,
                ),
                
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color:Colors.grey[700],))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? '' : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postedOn == null ? '' : postedOn),
          SizedBox(width: 14),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }
}
