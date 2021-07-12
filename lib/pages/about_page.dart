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
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(color: UserColors.backgroundColor),
    );
  }
}
