import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roncv/Components/FAB.dart';
import 'package:roncv/Styles/ColorStyling.dart';

class Work extends StatelessWidget {
  static String title = 'Work';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FAB(
            iconColor: WorkScreenBackGroundColor,
            context: context,
            height: height,
          ),
          backgroundColor: WorkScreenBackGroundColor,
          body: Center(
            child: GestureDetector(
              child: FaIcon(
                FontAwesomeIcons.arrowAltCircleDown,
                size: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
