import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
import 'package:roncv/Components/EducationPageMainWidget.dart';
import 'package:roncv/Components/FAB.dart';
import 'package:roncv/Styles/ColorStyling.dart';

import '../ProviderPack/PageController.dart';

class Education extends StatelessWidget {
  static String title = 'School';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final myModel = Provider.of<MyModel>(context, listen: false);

    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FAB(
            iconColor: EducationScreenBackGroundColor,
            context: context,
            height: height,
          ),
          backgroundColor: EducationScreenBackGroundColor,
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
                child: RawMaterialButton(
                  splashColor: Colors.transparent,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onPressed: () {
                    myModel.previousPage();
                  },
                  child: Transform.translate(
                    offset: const Offset(-20, 0),
                    child: ArrowWidget(pointsLeft: true),
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Align(
                  alignment: Alignment.center,
                  child: EducationPageMainWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
