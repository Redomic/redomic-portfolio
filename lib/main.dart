import 'package:flutter/material.dart';

import 'pages/device_selector_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: DeviceSelectorPage(),
    );
  }
}
