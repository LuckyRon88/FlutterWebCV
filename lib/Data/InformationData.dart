import 'package:flutter/material.dart';
import 'package:roncv/Components/CardInfo.dart';

//////////////INTRO PAGE DATA////////////////////////////
final introHeadTag = "Hi! \n I'm Danny.";
final introProfileImageLocation = "assets/images/profilePicture.jpg";

////////////////////BottomSheet COntact information
final contactHeadLine = "Contact me today!";
final contactWeChatID = "vid0aksoxyz";
final contactFirstPhoneNumber = "+86-155-155-12405";
final contactSecondPhoneNumber = "+1-740-218-1475 x3019";
final contactEmail = "ronald.mmma2@gmail.com";

//////////Education Page

final eduNumberOfTabs = 2;

///how many tabs do you want at the bottom of the page -> Make sure to update the 2 lists below if you change the number to 3,4, etc.

final listOfEducationLabels = ["Bachelors", "PostGrad"];

final listOfEducationWidgets = [
  Container(
    child: CardInfo(),
  ),
  Container(
    child: CardInfo(),
  ),
];
