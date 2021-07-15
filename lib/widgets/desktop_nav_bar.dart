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
    return Stack(
      children: [
        // NAVBAR BACKGROUND CONTAINER
        NavbarContainerHolder(
          navbarHeight: navbarHeight,
          navbarWidth: navbarWidth,
        ),
        // TOP BUTTON HOLDER
        NavbarTopButtonHolder(
          navbarWidth: navbarWidth,
        ),
        // BUTTON SLIDER
        NavbarSliderHolder(
          navbarWidth: navbarWidth,
        ),
        // NAVBAR BUTTONS HOLDER
        NavbarButtonsHolder(
          navbarWidth,
          navbarHeight,
        ),
      ],
    );
  }
}

class NavbarContainerHolder extends StatelessWidget {
  const NavbarContainerHolder({
    Key? key,
    required this.navbarHeight,
    required this.navbarWidth,
  }) : super(key: key);

  final double navbarHeight;
  final double navbarWidth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
            border: Border.all(
              width: 2,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
      ),
    );
  }
}

class NavbarTopButtonHolder extends StatelessWidget {
  const NavbarTopButtonHolder({
    Key? key,
    required this.navbarWidth,
  }) : super(key: key);

  final double navbarWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: Container(
            height: navbarWidth + 15,
            width: navbarWidth,
            color: UserColors.accentRedColor,
          ),
        ),
        Positioned(
          top: 30,
          left: 18,
          child: Container(
            height: navbarWidth - 35,
            width: navbarWidth - 35,
            child: Image.asset('images/userlogo_lowres.png'),
          ),
        ),
      ],
    );
  }
}

class NavbarSliderHolder extends StatelessWidget {
  const NavbarSliderHolder({
    Key? key,
    required this.navbarWidth,
  }) : super(key: key);

  final double navbarWidth;

  @override
  Widget build(BuildContext context) {
    return Consumer<UserPageControllerProvider>(
      builder: (context, provider, child) {
        final double getPosition = provider.pageSliderPositionLogic();
        return AnimatedPositioned(
          top: getPosition,
          left: navbarWidth - 6,
          curve: Curves.easeInOutExpo,
          duration: Duration(milliseconds: 400),
          child: Container(
            decoration: BoxDecoration(
              color: UserColors.accentRedColor,
            ),
            height: navbarWidth,
            width: 6,
          ),
        );
      },
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
