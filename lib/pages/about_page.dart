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
        child: Text(
          'UNDER WORK',
          style: TextStyle(
            color: Colors.white,
            fontSize: 100,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
