import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:roncv/Styles/fontsStyling.dart';

class FAB extends StatelessWidget {
  BuildContext context;
  Color iconColor;
  double height;

  FAB({this.iconColor, this.context, this.height});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black87,
      tooltip: "Contact me!",
      elevation: 5,
      mouseCursor: MaterialStateMouseCursor.clickable,
      onPressed: showContactInfo,
      child: FaIcon(
        FontAwesomeIcons.envelope,
        size: 30.0,
        color: this.iconColor,
      ),
    );
  }

  void showContactInfo() {
    showCupertinoModalBottomSheet(
      barrierColor: Color(0x771a1918),
      context: this.context,
      builder: (context, scrollController) => Container(
        height: this.height * 0.45,
        color: Colors.white70,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Contact me today!",
                  style: ContactHeaderStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                ContactWidget(
                    icon: FontAwesomeIcons.weixin,
                    iconColor: Colors.green,
                    textToDisplay: "vid0aksoxyz"),
                ContactWidget(
                    icon: FontAwesomeIcons.phone,
                    iconColor: Colors.black,
                    textToDisplay: "+86 155 155 12405"),
                ContactWidget(
                    icon: FontAwesomeIcons.phone,
                    iconColor: Colors.blueAccent,
                    textToDisplay: "+1 740 218 1475 x3019"),
                ContactWidget(
                    icon: FontAwesomeIcons.envelope,
                    iconColor: Colors.black,
                    textToDisplay: "ronald.mmma2@gmail.com"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String textToDisplay;

  ContactWidget({this.icon, this.iconColor, this.textToDisplay});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            FaIcon(
              this.icon,
              size: 30,
              color: this.iconColor,
            ),
            SizedBox(
              width: 10.0,
            ),
            SelectableText(
              this.textToDisplay,
              style: ContactInfoStyle,
            ),
          ],
        ),
      ),
    );
  }
}
