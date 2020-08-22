import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roncv/Styles/fontsStyling.dart';

class Achievements extends StatelessWidget {
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
                Achieve(
                  title: "Professional",
                  iconToDisplay: FontAwesomeIcons.trophy,
                  summary:
                      "- Ranked 1 in Canada for most high end vision applications (linescan, 3D, measurements, and surface defects) successfully tested, sold and supported for 2017.",
                ),
                Achieve(
                  title: "Persistence",
                  iconToDisplay: FontAwesomeIcons.heartbeat,
                  summary:
                      "- Helping Toyota Canada develop their in-house vision team and making the XG-X the standard for all vision applications in TMMC.",
                ),
                Achieve(
                  title: "Research",
                  iconToDisplay: FontAwesomeIcons.glasses,
                  summary:
                      "- Found a solution to connect to Google.com from Central China with 40ms TCP ping and at 90% network speed. I also installed a home wide networking solution with 95%+ up-time.",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Achieve extends StatelessWidget {
  final String title;
  final IconData iconToDisplay;
  final String summary;

  Achieve({this.title, this.iconToDisplay, this.summary});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FaIcon(
              this.iconToDisplay,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              this.title,
              style: achieveSkillTitle,
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          this.summary,
          textAlign: TextAlign.left,
          softWrap: true,
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
