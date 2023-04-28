import 'package:facebook_application/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          creatRoomButton(),
          Avatar(displayImage: dwayne,displayStatus: true,),
          Avatar(displayImage: vin,displayStatus: true),
          Avatar(displayImage: jennifer,displayStatus: true),
          Avatar(displayImage: johnny,displayStatus: true),
          Avatar(displayImage: margor,displayStatus: true),
          Avatar(displayImage: ryan,displayStatus: true), 
          Avatar(displayImage: billgates,displayStatus: true),
          Avatar(displayImage: eminem,displayStatus: true),
          

          

        ],
      ),
    );
  }

  Widget creatRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            color: Color.fromARGB(255, 168, 209, 243),
            width: 2,
          ),
        ),
        onPressed: () {
          print('room button clicked');
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          'create \n room',
        ),
        
      ),
    );
  }
}
