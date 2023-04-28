
import 'package:flutter/material.dart';

class suggestionCard extends StatelessWidget {
 
  final String Avatar;
  final String name;
  final String mutualfriends;
  final void Function() addfriend;
  final void Function() remove;
suggestionCard({
  required this.Avatar,
  required this.name,
  required this.mutualfriends,
  required this.addfriend,
  required this.remove
});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 5,
      ),
      child: Stack(
        children: [suggestionImage(), suggestioninfo()],
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          Avatar,
          fit: BoxFit.cover,
          height: 250,
        ),
      ),
    );
  }

  Widget suggestioninfo() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Color.fromARGB(255, 231, 229, 229),
            width: 1,
          ),
          borderRadius: BorderRadius.only
          (bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
          )
        ),
        
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null? name: ''),
              subtitle: Text(mutualfriends != null? mutualfriends:''),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                      buttonAction: addfriend,
                      buttonIcon: Icons.person_add,
                      buttonColor: Color.fromARGB(255, 26, 123, 203),
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: 'Add friend'),
                      blankButton(
                        buttonAction: remove,
                       buttonColor: Color.fromARGB(255, 227, 223, 223), 
                       buttonTextColor: Colors.black, 
                       buttonText: 'Remove')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget blankButton ({
    required void Function() buttonAction, 
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText,
  }){
    return TextButton(
      onPressed: buttonAction,
       child:Text(buttonText,style:TextStyle(color: buttonTextColor) ,),
       style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          buttonColor),
           minimumSize: MaterialStateProperty.all<Size>(
      Size(100.0, 40.2),
    ),
          )
        
       );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          buttonColor,),
          shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
      ),
    );
  }
}
