import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class MyModel with ChangeNotifier {
  int page = 2;
  LiquidController liquidController;

  MyModel() {
    liquidController = LiquidController();
  }

  void nextPage() {
    print("next page");
    liquidController.animateToPage(
      page: getCurrentPage() + 1,
      duration: 600,
    );
    notifyListeners();
  }

  void previousPage() {
    print("previous page");
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
