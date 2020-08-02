import 'package:flutter/material.dart';
import 'package:roncv/Components/CardInfo.dart';

//////////////INTRO PAGE DATA////////////////////////////
final introHeadTag = "Hi! \n I'm Ron.";
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
    child: CardInfo(
      imageBannerLocation: "assets/images/uwlogo.png",
      mainTitle: "Bachelors",
      positionTitle: "Honours Engineering",
      dates: "2010-2015",
      location: "Waterloo, Canada",
      listOfWidgetsToShowWhenExpand: <Widget>[
        Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "sadasdasdasda",
              softWrap: true,
              overflow: TextOverflow.fade,
            )),
      ],
    ),
  ),
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/uwlogo.png",
      mainTitle: "Bachelors",
      positionTitle: "Honours Engineering",
      dates: "2010-2015",
      location: "Waterloo, Canada",
      listOfWidgetsToShowWhenExpand: <Widget>[
        Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "sadasdasdasda",
              softWrap: true,
              overflow: TextOverflow.fade,
            )),
      ],
    ),
  ),
];
