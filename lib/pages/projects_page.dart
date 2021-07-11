import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  ProjectsPage({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(color: Colors.yellow),
    );
  }
}
