import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/page_controller.dart';
import 'pages/device_selector_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UserPageControllerProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Portfolio',
        home: DeviceSelectorPage(),
      ),
    );
  }
}
