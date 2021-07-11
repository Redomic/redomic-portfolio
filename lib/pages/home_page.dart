import 'package:flutter/material.dart';

import '../constants/user_color.dart';

class HomePage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  HomePage({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(color: UserColors.backgroundColor),
    );
  }
}
