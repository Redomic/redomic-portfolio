import 'package:flutter/material.dart';

import 'nav_bar_item.dart';

class DesktopNavBar extends StatefulWidget {
  final double navbarWidth;

  DesktopNavBar(this.navbarWidth);
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
          NavbarItem('About', widget.navbarWidth),
          NavbarItem('Projects', widget.navbarWidth),
          NavbarItem('Working on', widget.navbarWidth),
        ],
      ),
    );
  }
}
