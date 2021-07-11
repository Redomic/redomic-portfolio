import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(color: Colors.green),
    );
  }
}
