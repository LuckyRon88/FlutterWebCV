import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:motion_tab_bar/MotionTabController.dart';

class MyModel with ChangeNotifier {
  MotionTabController eduTabController;
  int page = 1;
  LiquidController liquidController;

  MyModel() {
    liquidController = LiquidController();
  }

  void nextPage() {
    liquidController.animateToPage(
      page: getCurrentPage() + 1,
      duration: 600,
    );
    notifyListeners();
  }

  void previousPage() {
    liquidController.animateToPage(
      page: getCurrentPage() - 1,
      duration: 600,
    );
    notifyListeners();
  }

  int getCurrentPage() {
    return liquidController.currentPage;
  }
}
