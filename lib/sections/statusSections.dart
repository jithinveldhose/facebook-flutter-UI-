

// ignore_for_file: unnecessary_string_escapes

import 'package:facebook_application/assets.dart';
import 'package:facebook_application/widgets/avatar.dart';
import 'package:flutter/material.dart';

  
class statusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 
    return ListTile(
      leading: Avatar(displayImage: dwayne,displayStatus: false),
      title: TextField(
      decoration: InputDecoration(
        hintText: "What's on your mind?",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        
      ),
      ),
    );
  }
}