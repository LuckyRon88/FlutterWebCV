import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
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
    myModel = Provider.of<MyModel>(context, listen: false);
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
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
            labels: listOfLabels,
            initialSelectedTab: listOfLabels[1],
            tabIconColor: Colors.green,
            tabSelectedColor: Colors.red,
            onTabItemSelected: (int value) {
              print(value);
              setState(() {
                _tabController.index = value;
              });
            },
            icons: [Icons.account_box, Icons.home, Icons.menu],
            textStyle: TextStyle(color: Colors.red),
          ),
          backgroundColor: EducationScreenBackGroundColor,
          body: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
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
                    children: listOfWidgets,
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

List<String> listOfLabels = ["Account", "Home", "Dashboard"];

List<Widget> listOfWidgets = [
  Container(
    child: Center(
      child: Text("Account"),
    ),
  ),
  Container(
    child: Center(
      child: Text("Home"),
    ),
  ),
  Container(
    child: Center(
      child: Text("Dashboard"),
    ),
  ),
];
