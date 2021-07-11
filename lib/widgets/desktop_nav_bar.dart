import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'nav_bar_item.dart';

class DesktopNavBar extends StatefulWidget {
  final double navbarWidth;
  final ItemScrollController itemScrollController;

  DesktopNavBar(this.navbarWidth, this.itemScrollController);
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: widget.navbarWidth,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavbarItem(
            'About',
            1,
            widget.navbarWidth,
            widget.itemScrollController,
          ),
          NavbarItem(
            'Projects',
            2,
            widget.navbarWidth,
            widget.itemScrollController,
          ),
          NavbarItem(
            'Socials',
            3,
            widget.navbarWidth,
            widget.itemScrollController,
          ),
        ],
      ),
    );
  }
}
