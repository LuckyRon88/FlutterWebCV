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

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context, listen: false);

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
                child: Container(
                  child: MotionTabBarView(
                    controller: _tabController,
                    children: listOfWidgets,
                  ),
                ),
              )
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
    height: 200,
    width: 200,
    child: Center(
      child: Text("Account"),
    ),
  ),
  Container(
    height: 200,
    width: 200,
    child: Center(
      child: Text("Home"),
    ),
  ),
  Container(
    height: 200,
    width: 200,
    child: Center(
      child: Text("Dashboard"),
    ),
  ),
];
