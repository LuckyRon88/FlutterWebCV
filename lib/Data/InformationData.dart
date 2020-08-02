import 'package:flutter/material.dart';
import 'package:roncv/Components/BulletPoint.dart';
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

/////////////WORK PAGE -------_>>>>>>>>>>>>>>> ONLY WORK STUFFFFF

final workNumberOfTabs = 3;

final listOfWorkLabels = ["Bachelors", "PostGrad", "otherWork"];

final listOfWorkWidgets = [
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/uwlogo.png",
      mainTitle: "Bachelors",
      positionTitle: "Honours Engineering",
      dates: "2010-2015",
      location: "Waterloo, Canada",
      listOfWidgetsToShowWhenExpand: <Widget>[
        BulletPoint(
          textToDisplay:
              "- Consistently ranked in the top 16 students (out of 110) every semester.",
        ),
        BulletPoint(
          textToDisplay:
              "- 4th year specialized in automation related courses.",
        ),
      ],
    ),
  ),
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/queensu.jpg",
      mainTitle: "MASc/Phd",
      positionTitle: "Engineering: Turbulence",
      dates: "2015-Unfinished",
      location: "Kingston, Canada",
      listOfWidgetsToShowWhenExpand: <Widget>[
        BulletPoint(
          textToDisplay:
              "- Used machine vision (Photron) along with Matlab/Python for data analysis of turbulence related properties.",
        ),
        BulletPoint(
          textToDisplay:
              "- Designed and built unique experiment to scale up blood vessels with he purpose of studying the modification of homogeneous turbulence by flexible particles in a dense suspension.",
        ),
        BulletPoint(
          textToDisplay:
              "- Invited to become a PhD candidate in fluid mechanics but refused because of personal finances.",
        ),
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
        BulletPoint(
          textToDisplay:
              "- Consistently ranked in the top 16 students (out of 110) every semester.",
        ),
        BulletPoint(
          textToDisplay:
              "- 4th year specialized in automation related courses.",
        ),
      ],
    ),
  ),
];

//////////Education Page ->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ONLY EDUCATION PAGE STUFF HERE

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
        BulletPoint(
          textToDisplay:
              "- Consistently ranked in the top 16 students (out of 110) every semester.",
        ),
        BulletPoint(
          textToDisplay:
              "- 4th year specialized in automation related courses.",
        ),
      ],
    ),
  ),
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/queensu.jpg",
      mainTitle: "MASc/Phd",
      positionTitle: "Engineering: Turbulence",
      dates: "2015-Unfinished",
      location: "Kingston, Canada",
      listOfWidgetsToShowWhenExpand: <Widget>[
        BulletPoint(
          textToDisplay:
              "- Used machine vision (Photron) along with Matlab/Python for data analysis of turbulence related properties.",
        ),
        BulletPoint(
          textToDisplay:
              "- Designed and built unique experiment to scale up blood vessels with he purpose of studying the modification of homogeneous turbulence by flexible particles in a dense suspension.",
        ),
        BulletPoint(
          textToDisplay:
              "- Invited to become a PhD candidate in fluid mechanics but refused because of personal finances.",
        ),
      ],
    ),
  ),
];
