import 'package:flutter/material.dart';

import 'desktop_nav_bar.dart';
import '../pages/master_page.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navbarWidth = 100.0;
    return Scaffold(
      body: Row(
        children: [
          DesktopNavBar(navbarWidth),
          MasterPage(navbarWidth),
        ],
      ),
    );
  }
}
