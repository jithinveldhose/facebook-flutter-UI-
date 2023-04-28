import 'package:facebook_application/assets.dart';
import 'package:facebook_application/sections/headerbutton.dart';
import 'package:facebook_application/sections/roomsection.dart';
import 'package:facebook_application/sections/statusSections.dart';
import 'package:facebook_application/sections/storysection.dart';
import 'package:facebook_application/sections/suggestion.dart';
import 'package:facebook_application/widgets/circularbutton.dart';
import 'package:facebook_application/widgets/headbutton.dart';
import 'package:facebook_application/widgets/postcard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 2,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('facebook',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            CircularButton(
              buttonAction: () {},
              buttonIcon: Icons.search,
            ),
            CircularButton(
              buttonAction: () {},
              buttonIcon: Icons.chat,
            )  
          ],
        ),
        body: ListView(
          children: [
            statusSection(),
            thinDivider,
            HeaderButttonSection(
              buttonOne: headerbutton(
                  buttontext: 'Live',
                  buttonIcon: Icons.video_call,
                  buttonColor: Colors.red,
                  buttonAction: () {
                    print('go live');
                  }),
              buttonTwo: headerbutton(
                  buttontext: 'photo',
                  buttonIcon: Icons.photo,
                  buttonColor: Colors.green,
                  buttonAction: () {
                    print('go to album');
                  }),
              buttonThree: headerbutton(
                  buttontext: 'Room',
                  buttonIcon: Icons.video_call,
                  buttonColor: Color.fromARGB(255, 144, 9, 175),
                  buttonAction: () {
                    print('go to room');
                  }),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCArad(
              avatar: jennifer,
              name: 'jennifer Lawrence',
              postedOn: '10min',
              image: jenniferPost,
              like: '1M',
              comment: '20k',
              share: '4k',
              showBlueTick: true,
            ),
            thickDivider,
            PostCArad(
              avatar: margo,
              name: 'Marggot robbie',
              postedOn: ' 3h',
              image: margotPost,
              like: '50k',
              comment: '5k',
              share: '1k',
              showBlueTick: true,
            ),
            thickDivider,
            PostCArad(
              avatar: vin,
              name: 'Van Diesel',
              postedOn: '4h',
              image: VinDieselPost,
              like: '40k',
              comment: '5k',
              share: '1k',
              showBlueTick: true,
            ),
            thickDivider,
            suggestionSection(),
            thickDivider,
            PostCArad(
              avatar: vin,
              name: 'Dwane Johnson',
              postedOn: '10h',
              image: dwanePost,
              like: '50k',
              comment: '5k',
              share: '1k',
              showBlueTick: true,
            ),
            thickDivider,
            PostCArad(
              avatar: johnny,
              name: "Johnny",
              postedOn: '4h',
              like: '550k',
              comment: '15k',
              share: '4k',
              image: johnny,
              showBlueTick: true,
            ),
          ],
        ),
      ),
    );
  }
}
