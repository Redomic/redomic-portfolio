import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

class HomePage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  HomePage({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: 670,
            height: 500,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 138,
                  child: Text(
                    'J O N E S  D A V I D',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'TitilliumWeb',
                      fontWeight: FontWeight.w200,
                      fontSize: 50,
                    ),
                  ),
                ),
                Text(
                  'DEVELOPER',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'TitilliumWeb',
                    fontWeight: FontWeight.w900,
                    fontSize: 125,
                  ),
                ),
                Positioned(
                  top: 320,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: UserColors.accentRedColor,
                        width: 300,
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('userlogo_lowres.png'),
                      ),
                      Container(
                        color: UserColors.accentRedColor,
                        width: 300,
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
