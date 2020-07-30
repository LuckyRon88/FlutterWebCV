import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyling.dart';
import 'CardExpand.dart';

class EducationPageMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ExpandableTheme(
      data: const ExpandableThemeData(
        iconColor: Colors.blue,
        useInkWell: true,
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          CardExpand(
            shortText: shortTextEdu1,
            longText: longTextEdu1,
            imageLocation: "assets/images/uwlogo.jpg",
            cardColor: CardColorEducation,
          ),
        ],
      ),
    ));
  }
}

const shortTextEdu1 = "I did my bachelors here at the University";
const longTextEdu1 =
    "sdafsdfdsfsd dsfsdfsdfsd fwsdfnjsiujfhiweubnfwe weufniefnejibvce rcjerncievcev";
