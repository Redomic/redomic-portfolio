import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'desktop_nav_bar.dart';
import '../pages/master_page.dart';

class DesktopView extends StatefulWidget {
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;

  DesktopView({
    required this.itemScrollController,
    required this.itemPositionsListener,
  });

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    final navbarWidth = 100.0;
    return Scaffold(
      body: Row(
        children: [
          DesktopNavBar(navbarWidth, widget.itemScrollController),
          MasterPage(
            navbarWidth: navbarWidth,
            itemPositionsListener: widget.itemPositionsListener,
            itemScrollController: widget.itemScrollController,
          ),
        ],
      ),
    );
  }
}
