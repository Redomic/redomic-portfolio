import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  HomePage({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
