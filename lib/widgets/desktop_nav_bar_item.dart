import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/page_controller.dart';

class DesktopNavbarButtonItem extends StatelessWidget {
  final String itemText;
  final int index;
  final double navbarWidth;

  DesktopNavbarButtonItem({
    required this.itemText,
    required this.index,
    required this.navbarWidth,
  });

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<UserPageControllerProvider>(context);

    return InkWell(
      onTap: () {
        pageProvider.pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOutExpo,
        );
        pageProvider.changePageIndexTo(index);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: navbarWidth,
        width: navbarWidth,
        child: Center(
          child: Text(
            itemText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class DesktopNavbarLogoItem extends StatelessWidget {
  final double navbarWidth;

  DesktopNavbarLogoItem(this.navbarWidth);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<UserPageControllerProvider>(context);
    return InkWell(
      onTap: () {
        pageProvider.pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOutExpo,
        );
        pageProvider.changePageIndexTo(0);
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: navbarWidth,
        width: navbarWidth,
        // child: Center(
        //   child: Image.asset(
        //     'userlogo.png',
        //   ),
        // ),
      ),
    );
  }
}
