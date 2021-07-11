import 'package:flutter/material.dart';

import 'starting_page.dart';
import 'about_page.dart';

class MasterPage extends StatefulWidget {
  final double navbarWidth;

  MasterPage(this.navbarWidth);
  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width - widget.navbarWidth;
    final screenHeight = mediaQuery.size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          StartingPage(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          AboutPage(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          // ProjectsPage(),
          // WorkingOnPage(),
        ],
      ),
    );
  }
}
