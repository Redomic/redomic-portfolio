import 'package:flutter/material.dart';

import '../widgets/desktop_view.dart';
import '../widgets/mobile_view.dart';

class DeviceSelectorPage extends StatefulWidget {
  @override
  _DeviceSelectorPage createState() => _DeviceSelectorPage();
}

class _DeviceSelectorPage extends State<DeviceSelectorPage> {
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 700 ? DesktopView() : MobileView();
  }
}
