import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/user_config.dart';
import '../constants/user_colors.dart';

import '../providers/page_controller.dart';

class MobileNavbar extends StatefulWidget {
  final double screenWidth;

  MobileNavbar(this.screenWidth);
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  double navbarWidth = MobileNavbarConfig.navbarWidth;
  double navbarHeight = MobileNavbarConfig.navbarHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: navbarHeight,
      width: widget.screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              NavbarContainerHolder(
                navbarWidth: navbarWidth,
                navbarHeight: navbarHeight,
              ),
              NavbarLogoBackgoundHolder(
                navbarHeight: navbarHeight,
              ),
              NavbarButtonsHolder(
                navbarHeight: navbarHeight,
                navbarWidth: navbarWidth,
              ),
              NavbarSliderHolder(
                navbarWidth: navbarWidth,
                navbarHeight: navbarHeight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavbarButtonsHolder extends StatelessWidget {
  const NavbarButtonsHolder({
    Key? key,
    required this.navbarHeight,
    required this.navbarWidth,
  }) : super(key: key);

  final double navbarHeight;
  final double navbarWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: navbarHeight,
      width: navbarWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavbarButton(
            navbarHeight: navbarHeight - 30,
            buttonText: '',
            index: 0,
          ),
          NavbarButton(
            navbarHeight: navbarHeight,
            buttonText: 'Home',
            index: 0,
          ),
          NavbarButton(
            navbarHeight: navbarHeight,
            buttonText: 'Info',
            index: 1,
          ),
          NavbarButton(
            navbarHeight: navbarHeight,
            buttonText: 'Projects',
            index: 2,
          ),
        ],
      ),
    );
  }
}

class NavbarButton extends StatelessWidget {
  const NavbarButton({
    Key? key,
    required this.navbarHeight,
    required this.buttonText,
    required this.index,
  }) : super(key: key);

  final double navbarHeight;
  final String buttonText;
  final int index;

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<UserPageControllerProvider>(context);

    return InkWell(
      onTap: () {
        pageProvider.pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOutExpo,
        );
        pageProvider.changePageIndexTo(index);
      },
      child: Container(
        height: navbarHeight,
        width: navbarHeight,
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class NavbarLogoBackgoundHolder extends StatelessWidget {
  const NavbarLogoBackgoundHolder({
    Key? key,
    required this.navbarHeight,
  }) : super(key: key);

  final double navbarHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: Container(
            height: navbarHeight,
            width: navbarHeight + 15,
            color: UserColors.accentRedColor,
          ),
        ),
        Positioned(
          top: 18,
          left: 30,
          child: Container(
            height: navbarHeight - 35,
            width: navbarHeight - 35,
            child: Image.asset('images/userlogo_lowres.png'),
          ),
        ),
      ],
    );
  }
}

class NavbarContainerHolder extends StatelessWidget {
  const NavbarContainerHolder({
    Key? key,
    required this.navbarWidth,
    required this.navbarHeight,
  }) : super(key: key);

  final double navbarWidth;
  final double navbarHeight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white.withOpacity(0.1)),
            color: UserColors.navBarColor.withOpacity(0.5),
          ),
          width: navbarWidth,
          height: navbarHeight,
        ),
      ),
    );
  }
}

class NavbarSliderHolder extends StatelessWidget {
  const NavbarSliderHolder({
    Key? key,
    required this.navbarWidth,
    required this.navbarHeight,
  }) : super(key: key);

  final double navbarWidth;
  final double navbarHeight;

  @override
  Widget build(BuildContext context) {
    return Consumer<UserPageControllerProvider>(
      builder: (context, provider, child) {
        final double getPosition = provider.mobilePageSliderPositionLogic();
        return AnimatedPositioned(
          left: getPosition,
          top: navbarHeight - 6,
          curve: Curves.easeInOutExpo,
          duration: Duration(milliseconds: 400),
          child: Container(
            decoration: BoxDecoration(
              color: UserColors.accentRedColor,
            ),
            width: navbarHeight,
            height: 6,
          ),
        );
      },
    );
  }
}
