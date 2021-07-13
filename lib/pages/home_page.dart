import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import '../constants/user_colors.dart';

class HomePage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  HomePage({required this.screenWidth, required this.screenHeight});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  child: Container(
                    child: FadeInDown(
                      duration: Duration(milliseconds: 500),
                      delay: Duration(milliseconds: 200),
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
                  ),
                ),
                Positioned(
                  top: 158,
                  child: FadeInDown(
                    duration: Duration(milliseconds: 500),
                    child: Text(
                      'DEVELOPER',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'TitilliumWeb',
                        fontWeight: FontWeight.w900,
                        fontSize: 125,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 320,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        duration: Duration(milliseconds: 500),
                        delay: Duration(milliseconds: 200),
                        child: Container(
                          color: UserColors.accentRedColor,
                          width: 300,
                          height: 10,
                        ),
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 500),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: Image.asset('userlogo_lowres.png'),
                        ),
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 500),
                        delay: Duration(milliseconds: 200),
                        child: Container(
                          color: UserColors.accentRedColor,
                          width: 300,
                          height: 10,
                        ),
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
