import 'package:flutter/material.dart';

class SocialsPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  SocialsPage({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(color: Colors.green),
    );
  }
}
