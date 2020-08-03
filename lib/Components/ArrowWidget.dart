import 'package:flutter/material.dart';

class ArrowWidget extends StatelessWidget {
  final bool pointsLeft;
  ArrowWidget({this.pointsLeft});

  double size = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        !this.pointsLeft
            ? Icons.keyboard_arrow_right
            : Icons.keyboard_arrow_left,
        size: size,
        color: Colors.black,
      ),
    );
  }
}
