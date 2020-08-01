import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class TestTab extends StatefulWidget {
  MotionTabController eduTabController;

  @override
  _TestTabState createState() => _TestTabState();
}

class _TestTabState extends State<TestTab> with TickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.widget.eduTabController =
        MotionTabController(initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.widget.eduTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MotionTabBar(
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
      ),
    );
  }
}
