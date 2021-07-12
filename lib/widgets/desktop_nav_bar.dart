import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../constants/user_colors.dart';

import 'desktop_nav_bar_item.dart';

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
        color: UserColors.navBarColor,
        border: Border(
          right: BorderSide(color: UserColors.navBarBorderColor, width: 3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DesktopNavbarItem(
            'Home',
            0,
            widget.navbarWidth,
            widget.itemScrollController,
          ),
          DesktopNavbarItem(
            'About',
            1,
            widget.navbarWidth,
            widget.itemScrollController,
          ),
          DesktopNavbarItem(
            'Projects',
            2,
            widget.navbarWidth,
            widget.itemScrollController,
          ),
        ],
      ),
    );
  }
}
