import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  HomePage({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(color: Colors.green),
        ),
      ),
    );
  }
}
