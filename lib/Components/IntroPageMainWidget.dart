import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roncv/Styles/fontsStyling.dart';

import '../Data/InformationData.dart';
import 'AvatarImage.dart';

class IntroPageMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AvatarImage(),
        SizedBox(
          height: 10.0,
        ),
        Text(
          introHeadTag,
          style: TitleFontStyle,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
