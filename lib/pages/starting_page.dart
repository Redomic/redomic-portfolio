import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  StartingPage({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
