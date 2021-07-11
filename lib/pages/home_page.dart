import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets/desktop_view.dart';
import '../widgets/mobile_view.dart';

class DeviceSelectorPage extends StatefulWidget {
  @override
  _DeviceSelectorPage createState() => _DeviceSelectorPage();
}

class _DeviceSelectorPage extends State<DeviceSelectorPage> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return screenWidth >= 700
        ? DesktopView(
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
          )
        : MobileView(
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
          );
  }
}
