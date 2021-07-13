import 'package:flutter/material.dart';

import '../constants/user_config.dart';

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

  double pageSliderPositionLogic() {
    final int barPosition = getCurrentPage;
    final double navbarWidth = NavbarConfig.navbarWidth;
    if (barPosition == 0) {
      return navbarWidth + 15;
    } else if (barPosition == 1) {
      return (navbarWidth * 2) + 15;
    } else {
      return (navbarWidth * 3) + 15;
    }
  }
}
