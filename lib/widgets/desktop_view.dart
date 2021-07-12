import 'package:flutter/material.dart';

import 'desktop_nav_bar.dart';
import '../pages/master_page.dart';

class DesktopView extends StatefulWidget {
  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          MasterPage(),
          Positioned(
            left: 10,
            child: DesktopNavbar(),
          ),
        ],
      ),
    );
  }
}
