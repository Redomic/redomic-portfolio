import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/page_controller.dart';

class DesktopNavbarItem extends StatelessWidget {
  final String itemText;
  final int index;
  final double navbarWidth;

  DesktopNavbarItem(
    this.itemText,
    this.index,
    this.navbarWidth,
  );

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
      },
      child: Container(
        height: navbarWidth,
        width: navbarWidth,
        child: Center(
          child: Text(
            itemText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
