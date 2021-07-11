import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopNavbarItem extends StatelessWidget {
  final String itemText;
  final int index;
  final double navbarWidth;
  final ItemScrollController itemScrollController;

  DesktopNavbarItem(
      this.itemText, this.index, this.navbarWidth, this.itemScrollController);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        itemScrollController.scrollTo(
          index: index,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOutCubic,
        );
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
