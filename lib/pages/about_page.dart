import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

class AboutPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  AboutPage({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ),
    );
  }
}
