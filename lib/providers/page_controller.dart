import 'package:flutter/material.dart';

class PageScrollControllerClass with ChangeNotifier {
  final PageController pageController = PageController(
    initialPage: 0,
  );
  int currentPage = 0;

  void onChangePage(int pageIndex) {
    currentPage = pageIndex;
    notifyListeners();
  }
}
