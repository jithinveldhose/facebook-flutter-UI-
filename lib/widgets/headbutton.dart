


import 'package:flutter/material.dart';

Widget headerbutton({
    required String buttontext,
    required IconData buttonIcon,
    required Color buttonColor,
    required void Function() buttonAction,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon, 
        color: buttonColor,
      ),
      label: Text(
        buttontext,
        style: TextStyle(color: Colors.black),
      ),
    );
  } 