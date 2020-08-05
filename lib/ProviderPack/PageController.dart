import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class MyModel with ChangeNotifier {
  int page = 0;
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
