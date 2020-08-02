import 'package:flutter/material.dart';
import 'package:roncv/Components/Achievements.dart';
import 'package:roncv/Components/BulletPoint.dart';
import 'package:roncv/Components/CardInfo.dart';
import 'package:roncv/Components/LanguageSection.dart';

//////////////INTRO PAGE DATA////////////////////////////
final introHeadTag = "Hi! \n I'm Ron.";
final introProfileImageLocation = "assets/images/profilePicture.jpg";

////////////////////BottomSheet COntact information
final contactHeadLine = "Contact me today!";
final contactWeChatID = "vid0aksoxyz";
final contactFirstPhoneNumber = "+86-155-155-12405";
final contactSecondPhoneNumber = "+1-740-218-1475 x3019";
final contactEmail = "ronald.mmma2@gmail.com";

////////////////////FEATURE PAGE///////////////
final featureNumberOfTabs = 2;

final listOfFeatureLabels = ["Languages", "Achievements"];

final listOfFeatureWidgets = [
  Languages(),
  Achievements(),
];

/////////////WORK PAGE -------_>>>>>>>>>>>>>>> ONLY WORK STUFFFFF

final workNumberOfTabs = 3;

final listOfWorkLabels = ["Keyence", "Telesis", "KPN"];

final listOfWorkWidgets = [
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/keyence.jpeg",
      mainTitle: "Keyence",
      positionTitle: "Sales Executive",
      dates: "2015-2018",
      location: "Toronto, Canada",
      listOfWidgetsToShowWhenExpand: <Widget>[
        BulletPoint(
          textToDisplay:
              "- Goal achiever as demonstrated by being awarded ’top performer’ of the quarter for May-July of 2016 and voted ’sales person of the month’ on 3 different occasions by peers in an office of 50 sales people.",
        ),
        BulletPoint(
          textToDisplay:
              "- Sold and supported 2D/3D machine vision solutions to manufacturing facilities to reduce their operating costs and potential risks of shipping defective products. Handled the full sales cycle: Specifying vision equipment (lens, lighting, programming interface, set up), partnering up with local OEMs for full solutions and assisting with installation and programming .",
        ),
        BulletPoint(
          textToDisplay:
              "- Increased sales in assigned territory (core territory: Guelph-KW/Cambridge) by an average of 80% annually for 3 years in a row. Territory end of year size was of CAD\$1.8M in profit. This result was achieved by maximizing revenue at every opportunity and a very proactive approach to sales.",
        ),
      ],
    ),
  ),
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/telesis.jpg",
      mainTitle: "Telesis",
      positionTitle: "Regional Sales Manager",
      dates: "2018-2019",
      location: "Canada/NY",
      listOfWidgetsToShowWhenExpand: <Widget>[
        BulletPoint(
          textToDisplay:
              "- Developing Canadian territory from scratch by actively educating our distributors on: product knowledge, sales methods and industry standards. Handling sales for only key accounts while distributor reps handle day to day transactions.",
        ),
        BulletPoint(
          textToDisplay:
              "- Achieved standardizing product in Linamar’s (12 unique locations within one city alone) corporate specification.",
        ),
        BulletPoint(
          textToDisplay:
              "- Sales call activity for company product line increased by 250% in just the first quarter.",
        ),
      ],
    ),
  ),
  Container(
    child: CardInfo(
      imageBannerLocation: "assets/images/kpn.png",
      mainTitle: "KPNindustry.com",
      positionTitle: "Freelancer",
      dates: "2019-Present",
      location: "Online/China",
      listOfWidgetsToShowWhenExpand: <Widget>[
        BulletPoint(
          textToDisplay:
              "- Freelancing/Self-employed while handing full sales cycle and development of websites from scratch (Materialize/BootStrap) for small companies in the US.",
        ),
        BulletPoint(
          textToDisplay:
              "- Selling brochure-styled websites to small companies while obtaining all the clients through cold calling and online based demos.",
        ),
        BulletPoint(
          textToDisplay:
              "- Handling all aspects of a small business (payments, billing, taxes, sales and productions).",
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
