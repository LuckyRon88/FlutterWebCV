import 'package:flutter/material.dart';

import '../Styles/fontsStyling.dart';

class Bachelors extends StatelessWidget {
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
                borderRadius: BorderRadius.circular(25.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Bachelors", style: cvHeaderTitle),
                  Text("Honours Mechanical Engineering (Co-op)",
                      style: cvHeaderSubTitle),
                  Text("2010-2015", style: cvHeaderSub2Title),
                  Text("Waterloo, Canada", style: cvHeaderSub2Title),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    "assets/images/uwlogo.png",
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
