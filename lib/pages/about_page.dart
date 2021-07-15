import 'dart:ui';

import 'package:animate_do/animate_do.dart';
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

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: UserColors.navBarColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 2,
            ),
          ),
          padding: EdgeInsets.all(30),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInUp(
                    delay: Duration(milliseconds: 400),
                    child: DesktopAboutButton(
                      imageUrl: 'images/github.png',
                      logoText: 'GITHUB',
                      logoLink: 'https://github.com/redomic',
                    ),
                  ),
                  FadeInUp(
                    delay: Duration(milliseconds: 700),
                    child: DesktopAboutButton(
                      imageUrl: 'images/linkedin.png',
                      logoText: 'LINKEDIN',
                      logoLink:
                          'https://www.linkedin.com/in/jones-david-6b98381ba/',
                    ),
                  ),
                  FadeInUp(
                    delay: Duration(milliseconds: 1000),
                    child: DesktopAboutButton(
                      imageUrl: 'images/twitch.png',
                      logoText: 'TWITCH',
                      logoLink: 'https://www.twitch.tv/redomic',
                    ),
                  ),
                  FadeInUp(
                    delay: Duration(milliseconds: 1300),
                    child: DesktopAboutButton(
                      imageUrl: 'images/instagram.png',
                      logoText: 'INSTAGRAM',
                      logoLink: 'https://www.instagram.com/redomicna/',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
