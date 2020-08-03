import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roncv/Styles/ColorStyling.dart';
import 'package:roncv/Styles/fontsStyling.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LanguageSkillLevel(
                  textToDisplay: "English",
                  solidCircles: 5,
                ),
                LanguageSkillLevel(
                  textToDisplay: "Spanish",
                  solidCircles: 5,
                ),
                LanguageSkillLevel(
                  textToDisplay: "French",
                  solidCircles: 4,
                  emptyCircles: 1,
                ),
                LanguageSkillLevel(
                  textToDisplay: "普通話",
                  solidCircles: 2,
                  emptyCircles: 4,
                ),
                LanguageSkillLevel(
                  textToDisplay: "Flutter/Dart",
                  solidCircles: 4,
                  emptyCircles: 1,
                ),
                LanguageSkillLevel(
                  textToDisplay: "Java",
                  solidCircles: 4,
                  emptyCircles: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LanguageSkillLevel extends StatelessWidget {
  final String textToDisplay;
  final int solidCircles;
  final int emptyCircles;

  LanguageSkillLevel(
      {this.textToDisplay, this.solidCircles, this.emptyCircles = 0});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          this.textToDisplay,
          style: languageSkillTitle,
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            for (var _ in Iterable.generate(this.solidCircles))
              FaIcon(
                FontAwesomeIcons.solidCircle,
                color: featureScreenBackGroundColor,
              ),
            for (var _ in Iterable.generate(this.emptyCircles))
              FaIcon(
                FontAwesomeIcons.circle,
                color: featureScreenBackGroundColor,
              ),
          ],
        ),
      ],
    );
  }
}
