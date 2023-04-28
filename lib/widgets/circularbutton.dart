import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
   Color iconColor;
  void Function() buttonAction;

  CircularButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor= Colors.black
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7,top: 4),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed:buttonAction,
        icon: Icon(buttonIcon),
        color:iconColor,
      ),
    );
  }
}
