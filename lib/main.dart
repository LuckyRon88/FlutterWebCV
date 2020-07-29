import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';
import 'package:roncv/Screens/Education.dart';
import 'package:roncv/Screens/IntroPage.dart';
import 'package:roncv/Screens/Work.dart';

import 'ProviderPack/PageController.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  UpdateType updateType;

  final pages = [
    Container(child: IntroPage()),
    Container(
      child: Education(),
    ),
    Container(
      child: Work(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context, listen: false);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: LiquidSwipe(
          liquidController: myModel.liquidController,
          initialPage: myModel.page,
          waveType: WaveType.liquidReveal,
          pages: pages,
          fullTransitionValue: 700,
          enableSlideIcon: false,
          enableLoop: true,
        ),
      ),
    );
  }
}
