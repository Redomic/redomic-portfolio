import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

class DesktopAboutButton extends StatelessWidget {
  final String imageUrl;
  final String logoText;
  // final String logoLink;

  DesktopAboutButton({
    required this.imageUrl,
    required this.logoText,
    // required this.logoLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          height: 130,
          width: 100,
          decoration: BoxDecoration(
            color: UserColors.navBarBorderColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: UserColors.accentRedColor,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                child: Image.asset(imageUrl),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                logoText,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: UserColors.accentRedColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
