import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:roncv/Screens/Education.dart';
import 'package:roncv/Screens/IntroPage.dart';
import 'package:roncv/Screens/Work.dart';

import 'ProviderPack/PageController.dart';
import 'Screens/FeaturePage.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final pages = [
    Container(
      child: IntroPage(),
    ),
    Container(
      child: Education(),
    ),
    Container(
      child: Work(),
    ),
    Container(
      child: FeaturePage(),
    )
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
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1000,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
    );
  }
}
