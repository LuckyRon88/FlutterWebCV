import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
import 'package:roncv/Components/FAB.dart';
import 'package:roncv/Styles/ColorStyling.dart';

import '../ProviderPack/PageController.dart';

class Education extends StatelessWidget {
  var TestTab = testTab();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final myModel = Provider.of<MyModel>(context, listen: false);

    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
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
                alignment: Alignment.bottomCenter,
                child: TestTab,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FAB(
                    iconColor: EducationScreenBackGroundColor,
                    context: context,
                    height: height,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: MotionTabBarView(
                  controller: TestTab.toRet(),
                  children: <Widget>[
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class testTab extends StatefulWidget {
  MotionTabController eduTabController;

  MotionTabController toRet() => eduTabController;

  @override
  _testTabState createState() => _testTabState();
}

class _testTabState extends State<testTab> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    this.widget.eduTabController =
        MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.widget.eduTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      labels: ["Account", "Home", "Dashboard"],
      initialSelectedTab: "Home",
      tabIconColor: Colors.green,
      tabSelectedColor: Colors.red,
      onTabItemSelected: (int value) {
        print(value);
        setState(() {
          this.widget.eduTabController.index = value;
        });
      },
      icons: [Icons.account_box, Icons.home, Icons.menu],
      textStyle: TextStyle(color: Colors.red),
    );
  }
}
