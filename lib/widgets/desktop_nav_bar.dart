import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/user_colors.dart';
import '../constants/user_config.dart';

import '../providers/page_controller.dart';

import 'desktop_nav_bar_item.dart';

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  final double navbarWidth = NavbarConfig.navbarWidth;
  final double navbarHeight = NavbarConfig.navbarHeight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          // NAVBAR BACKGROUND CONTAINER
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: navbarHeight,
                width: navbarWidth,
                decoration: BoxDecoration(
                  color: UserColors.navBarColor.withOpacity(0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: Container(
              height: navbarWidth + 25,
              width: navbarWidth,
              color: UserColors.accentRedColor,
            ),
          ),
          // BUTTON SLIDER
          Consumer<UserPageControllerProvider>(
            builder: (context, provider, child) {
              final double getPosition = provider.pageSliderPositionLogic();
              return AnimatedPositioned(
                top: getPosition,
                left: navbarWidth - 5,
                curve: Curves.easeInOutExpo,
                duration: Duration(milliseconds: 400),
                child: Container(
                  decoration: BoxDecoration(
                    color: UserColors.accentRedColor,
                  ),
                  height: navbarWidth,
                  width: 5,
                ),
              );
            },
          ),
          // NAVBAR BUTTONS HOLDER
          NavbarButtonsHolder(navbarWidth, navbarHeight),
        ],
      ),
    );
  }
}

class NavbarButtonsHolder extends StatelessWidget {
  final double navbarWidth;
  final double navbarHeight;

  NavbarButtonsHolder(
    this.navbarWidth,
    this.navbarHeight,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: navbarHeight,
      width: navbarWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DesktopNavbarLogoItem(navbarWidth),
          DesktopNavbarButtonItem(
            itemText: 'Home',
            index: 0,
            navbarWidth: navbarWidth,
          ),
          DesktopNavbarButtonItem(
            itemText: 'About',
            index: 1,
            navbarWidth: navbarWidth,
          ),
          DesktopNavbarButtonItem(
            itemText: 'Projects',
            index: 2,
            navbarWidth: navbarWidth,
          ),
        ],
      ),
    );
  }
}
