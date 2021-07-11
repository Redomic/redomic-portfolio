import 'package:flutter/material.dart';

import '../pages/master_page.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final navbarWidth = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasterPage(0),
    );
  }
}
