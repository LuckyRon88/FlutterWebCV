import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
import 'package:roncv/Components/FAB.dart';
import 'package:roncv/Components/IntroPageMainWidget.dart';
import 'package:roncv/Styles/ColorStyling.dart';

import '../ProviderPack/PageController.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final myModel = Provider.of<MyModel>(context, listen: false);
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: IntroScreenBackGroundColor,
          body: Stack(
            children: [
              Align(
                child: RawMaterialButton(
                  splashColor: Colors.transparent,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onPressed: () {
                    myModel.nextPage();
                  },
                  child: Transform.translate(
                    offset: const Offset(20, 0),
                    child: ArrowWidget(pointsLeft: false),
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.center,
                child: IntroPageMainWidget(),
              ),
            ],
          ),
          floatingActionButton: FAB(
            iconColor: IntroScreenBackGroundColor,
            context: context,
            height: height,
          ),
        ),
      ),
    );
  }
}
