import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../pages/master_page.dart';

class MobileView extends StatefulWidget {
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;

  MobileView({
    required this.itemScrollController,
    required this.itemPositionsListener,
  });

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final navbarWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasterPage(
        navbarWidth: navbarWidth,
        itemPositionsListener: widget.itemPositionsListener,
        itemScrollController: widget.itemScrollController,
      ),
    );
  }
}
