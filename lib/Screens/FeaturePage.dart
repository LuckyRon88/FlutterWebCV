import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Components/ArrowWidget.dart';
import 'package:roncv/Data/InformationData.dart';
import 'package:roncv/ProviderPack/PageController.dart';
import 'package:roncv/Styles/ColorStyling.dart';
import 'package:roncv/motionbar/MotionTabBarView.dart';
import 'package:roncv/motionbar/MotionTabController.dart';
import 'package:roncv/motionbar/motiontabbar.dart';

class FeaturePage extends StatefulWidget {
  @override
  _FeaturePageState createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage>
    with TickerProviderStateMixin {
  MotionTabController _featureTabController;
  MyModel myModel;

  @override
  void initState() {
    super.initState();
    print("created Tab controller");
    myModel = Provider.of<MyModel>(context, listen: false);
    _featureTabController = MotionTabController(
        initialIndex: 0, vsync: this, length: featureNumberOfTabs);
  }

  @override
  void dispose() {
    super.dispose();
    print("disposed of tab controller");
    _featureTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: MotionTabBar(
            labels: listOfFeatureLabels,
            initialSelectedTab: listOfFeatureLabels[0],
            tabIconColor: featureIconTabColor,
            tabSelectedColor: featureTabSelectedColor,
            onTabItemSelected: (int value) {
              print(value);
              setState(() {
                _featureTabController.index = value;
              });
            },
            icons: [
              Icons.language,
              Icons.face,
            ],
            textStyle: TextStyle(color: featureTabSelectedColor),
          ),
          backgroundColor: featureScreenBackGroundColor,
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
                    controller: _featureTabController,
                    children: listOfFeatureWidgets,
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
