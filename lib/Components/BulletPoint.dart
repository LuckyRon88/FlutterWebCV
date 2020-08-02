import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  final String textToDisplay;
  BulletPoint({this.textToDisplay});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          this.textToDisplay,
          softWrap: true,
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
