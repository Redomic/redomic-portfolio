import 'package:flutter/material.dart';

class UserPageControllerProvider with ChangeNotifier {
  final PageController pageController = PageController(
    initialPage: 0,
  );
  int currentPage = 0;

  void changePageIndexTo(int pageIndex) {
    currentPage = pageIndex;
    notifyListeners();
  }

  int get getCurrentPage {
    return currentPage;
  }

  bool onIndex(int index) {
    if (getCurrentPage == index) {
      return true;
    } else {
      return false;
    }
  }
}
