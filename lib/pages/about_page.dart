import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/user_colors.dart';

import '../widgets/desktop_about_button.dart';

class AboutPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  AboutPage({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IntroductionTextHolder(),
            ],
          ),
        ],
      ),
    );
  }
}

class IntroductionTextHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int age =
        DateTime.now().year - DateFormat('dd-MM-yyyy').parse('06-06-2003').year;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 40,
              ),
              children: [
                TextSpan(text: "Hey, I'm "),
                TextSpan(
                  text: 'Jones',
                  style: TextStyle(
                    color: UserColors.accentRedColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: '.')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 30,
              ),
              children: [
                TextSpan(text: "A "),
                TextSpan(
                  text: '$age ',
                  style: TextStyle(
                    color: UserColors.accentRedColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: 'year-old developer')
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 30,
              ),
              children: [
                TextSpan(text: "who uses "),
                TextSpan(
                  text: 'Python',
                  style: TextStyle(
                    color: UserColors.pythonColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ', '),
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    color: UserColors.flutterColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ', '),
                TextSpan(
                  text: 'Javascript',
                  style: TextStyle(
                    color: UserColors.jsColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ', '),
                TextSpan(text: 'and '),
                TextSpan(
                  text: 'Others',
                  style: TextStyle(
                    color: UserColors.accentRedColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 30,
              ),
              children: [
                TextSpan(text: "Check me out on:"),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              DesktopAboutButton(
                imageUrl: 'images/github.png',
                logoText: 'GITHUB',
              ),
              DesktopAboutButton(
                imageUrl: 'images/linkedin.png',
                logoText: 'LINKEDIN',
              ),
              DesktopAboutButton(
                imageUrl: 'images/twitch.png',
                logoText: 'TWITCH',
              ),
              DesktopAboutButton(
                imageUrl: 'images/instagram.png',
                logoText: 'INSTAGRAM',
              ),
            ],
          )
        ],
      ),
    );
  }
}
