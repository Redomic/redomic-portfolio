import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

import 'desktop_nav_bar.dart';
import '../pages/master_page.dart';
import 'mobile_nav_bar.dart';

class ScreenView extends StatefulWidget {
  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          MasterPage(screenHeight, screenWidth),
          if (screenWidth > 1000)
            Positioned(
              left: 15,
              child: DesktopNavbar(),
            ),
          if (screenWidth < 1000)
            Positioned(
              top: 15,
              child: MobileNavbar(screenWidth),
            ),
        ],
      ),
    );
  }
}
