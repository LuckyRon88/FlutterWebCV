import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
import 'package:roncv/Data/InformationData.dart';
import 'package:roncv/Styles/ColorStyling.dart';

import '../ProviderPack/PageController.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> with TickerProviderStateMixin {
  MotionTabController _tabController;
  MyModel myModel;

  @override
  void initState() {
    super.initState();
    print("created Tab controller");
    myModel = Provider.of<MyModel>(context, listen: false);
    _tabController = MotionTabController(
        initialIndex: 0, vsync: this, length: eduNumberOfTabs);
  }

  @override
  void dispose() {
    super.dispose();
    print("disposed of tab controller");
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: MotionTabBar(
            labels: listOfEducationLabels,
            initialSelectedTab: listOfEducationLabels[0],
            tabIconColor: educationIconTabColor,
            tabSelectedColor: educationTabSelectedColor,
            onTabItemSelected: (int value) {
              print(value);
              setState(() {
                _tabController.index = value;
              });
            },
            icons: [
              FontAwesomeIcons.graduationCap,
              FontAwesomeIcons.graduationCap,
            ],
            textStyle: TextStyle(color: educationTabSelectedColor),
          ),
          backgroundColor: educationScreenBackGroundColor,
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
                    controller: _tabController,
                    children: listOfEducationWidgets,
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
