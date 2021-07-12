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
          duration: Duration(milliseconds: 200),
          curve: Curves.decelerate,
        );
        pageProvider.changePageIndexTo(index);
        print(pageProvider.getCurrentPage);
      },
      child: Container(
        height: navbarWidth,
        width: navbarWidth,
        child: Center(
          child: Text(
            itemText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
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
    return InkWell(
      onTap: () {},
      child: Container(
        height: navbarWidth,
        width: navbarWidth,
        child: Center(
          child: Text(
            'Placeholder text',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
