import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

import 'desktop_nav_bar_item.dart';

class DesktopNavbar extends StatefulWidget {
  final double navbarWidth;

  DesktopNavbar(
    this.navbarWidth,
  );

  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // MAIN BAR
        Container(
          height: double.infinity,
          width: widget.navbarWidth,
          decoration: BoxDecoration(
            color: UserColors.navBarColor,
            border: Border(
              right: BorderSide(color: UserColors.navBarBorderColor, width: 2),
            ),
          ),
        ),

        // LOGO BUTTON
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DesktopNavbarLogoItem(widget.navbarWidth),
          ],
        ),

        // PAGE BUTTONS
        NavbarButtonsHolder(widget.navbarWidth),
      ],
    );
  }
}

class NavbarButtonsHolder extends StatelessWidget {
  final double navbarWidth;

  NavbarButtonsHolder(
    this.navbarWidth,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: navbarWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DesktopNavbarButtonItem(
            itemText: 'Home',
            index: 0,
            navbarWidth: navbarWidth,
          ),
          DesktopNavbarButtonItem(
            itemText: 'About',
            index: 1,
            navbarWidth: navbarWidth,
          ),
          DesktopNavbarButtonItem(
            itemText: 'Projects',
            index: 2,
            navbarWidth: navbarWidth,
          ),
        ],
      ),
    );
  }
}
