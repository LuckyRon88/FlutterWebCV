import 'package:flutter/material.dart';

class ArrowWidget extends StatefulWidget {
  final bool pointsLeft;
  ArrowWidget({this.pointsLeft});
  @override
  _ArrowWidgetState createState() => _ArrowWidgetState();
}

class _ArrowWidgetState extends State<ArrowWidget>
    with TickerProviderStateMixin {
  AnimationController motionController;
  Animation motionAnimation;
  double size = 1;

  void initState() {
    super.initState();

    motionController = AnimationController(
      duration: Duration(
        milliseconds: 600,
      ),
      vsync: this,
      lowerBound: 0.95,
    );

    motionAnimation = CurvedAnimation(
      parent: motionController,
      curve: Curves.bounceInOut,
    );

    motionController.forward();
    motionController.addStatusListener((status) {
      setState(() {
        if (status == AnimationStatus.completed) {
          motionController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          motionController.forward();
        }
      });
    });

    motionController.addListener(() {
      setState(() {
        size = motionController.value * 70;
      });
    });
    // motionController.repeat();
  }

  @override
  void dispose() {
    motionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        !this.widget.pointsLeft
            ? Icons.keyboard_arrow_right
            : Icons.keyboard_arrow_left,
        size: size,
        color: Colors.black,
      ),
    );
  }
}
