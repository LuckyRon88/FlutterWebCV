import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:roncv/Data/InformationData.dart';

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircularProfileAvatar(
      '',

      child: Image.asset(
        introProfileImageLocation,
        fit: BoxFit.cover,
      ),
      radius: 50, // sets radius, default 50.0
      backgroundColor:
          Colors.transparent, // sets background color, default Colors.white
      borderWidth: 1, // sets border, default 0.0
      initialsText: Text(
        "RM",
        style: TextStyle(fontSize: 40, color: Colors.white),
      ), // sets initials text, set your own style, default Text('')
      borderColor:
          Colors.amberAccent, // sets border color, default Colors.white
      elevation:
          5.0, // sets elevation (shadow of the profile picture), default value is 0.0
      foregroundColor: Colors.amberAccent.withOpacity(
          0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
      cacheImage: true, // allow widget to cache image against provided url
      onTap: () {
        print('Ron');
      }, // sets on tap
      showInitialTextAbovePicture: true,
      // setting it true will show initials text above profile picture, default false
    ));
  }
}
