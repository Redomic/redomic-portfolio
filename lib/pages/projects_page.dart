import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

class ProjectsPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  ProjectsPage({
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
