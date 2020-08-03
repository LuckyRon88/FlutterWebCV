import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
import 'package:roncv/Data/InformationData.dart';
import 'package:roncv/ProviderPack/PageController.dart';
import 'package:roncv/Styles/ColorStyling.dart';
import 'package:roncv/motionbar/MotionTabBarView.dart';
import 'package:roncv/motionbar/MotionTabController.dart';
import 'package:roncv/motionbar/motiontabbar.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> with TickerProviderStateMixin {
  MotionTabController _workTabController;
  MyModel myModel;

  @override
  void initState() {
    super.initState();
    print("created Tab controller");
    myModel = Provider.of<MyModel>(context, listen: false);
    _workTabController = MotionTabController(
        initialIndex: 0, vsync: this, length: workNumberOfTabs);
  }

  @override
  void dispose() {
    super.dispose();
    print("disposed of tab controller");
    _workTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: MotionTabBar(
            labels: listOfWorkLabels,
            initialSelectedTab: listOfWorkLabels[0],
            tabIconColor: workIconTabColor,
            tabSelectedColor: workTabSelectedColor,
            onTabItemSelected: (int value) {
              print(value);
              setState(() {
                _workTabController.index = value;
              });
            },
            icons: [
              Icons.business_center,
              Icons.business_center,
              Icons.business_center,
            ],
            textStyle: TextStyle(color: workTabSelectedColor),
          ),
          backgroundColor: workScreenBackGroundColor,
          body: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RawMaterialButton(
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
              Expanded(
                child: Container(
                  child: MotionTabBarView(
                    controller: _workTabController,
                    children: listOfWorkWidgets,
                  ),
                ),
              ),
              RawMaterialButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
