import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'providers/page_controller.dart';
import 'widgets/screen_view.dart';

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
        builder: (ctx, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(ctx, widget!),
          // maxWidth: 1200,
          // minWidth: 400,
          // defaultScale: true,
          // breakpoints: [
          //   ResponsiveBreakpoint.resize(
          //     300,
          //     name: MOBILE,
          //     scaleFactor: 0.5,
          //   ),
          //   ResponsiveBreakpoint.resize(
          //     800,
          //     name: TABLET,
          //     scaleFactor: 0.8,
          //   ),
          //   ResponsiveBreakpoint.resize(
          //     1200,
          //     name: DESKTOP,
          //   ),
          // ],
          breakpoints: [
            ResponsiveBreakpoint.resize(
              1200,
              name: DESKTOP,
            ),
            ResponsiveBreakpoint.resize(
              2460,
              name: '4K',
              scaleFactor: 1,
            ),
            ResponsiveBreakpoint.resize(
              800,
              name: TABLET,
              scaleFactor: 0.6,
            ),
            ResponsiveBreakpoint.resize(
              450,
              name: MOBILE,
              scaleFactor: 0.6,
            ),
            ResponsiveBreakpoint.resize(
              100,
              name: 'LOWER MOBILE',
              scaleFactor: 0.4,
            ),
          ],
          background: Container(color: Colors.transparent),
        ),
        title: 'Portfolio',
        home: ScreenView(),
      ),
    );
  }
}
