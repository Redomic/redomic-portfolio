import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

import 'desktop_nav_bar_item.dart';

class DesktopNavBar extends StatefulWidget {
  final double navbarWidth;

  DesktopNavBar(
    this.navbarWidth,
  );

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
          ),
          DesktopNavbarItem(
            'About',
            1,
            widget.navbarWidth,
          ),
          DesktopNavbarItem(
            'Projects',
            2,
            widget.navbarWidth,
          ),
        ],
      ),
    );
  }
}
