import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/page_section.dart';

import '../providers/page_controller.dart';

import 'home_page.dart';
import 'about_page.dart';
import 'projects_page.dart';

class MasterPage extends StatefulWidget {
  final double navbarWidth;

  MasterPage({
    required this.navbarWidth,
  });

  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController =
        Provider.of<UserPageControllerProvider>(context).pageController;

    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width - widget.navbarWidth;
    final screenHeight = mediaQuery.size.height;

    final sections = <PageSection>[
      PageSection(
        title: 'Home page',
        page: HomePage(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
        ),
      ),
      PageSection(
        title: 'About page',
        page: AboutPage(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
        ),
      ),
      PageSection(
        title: 'Projects page',
        page: ProjectsPage(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
        ),
      ),
    ];

    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: PageView(
        controller: pageController,
        allowImplicitScrolling: false,
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          sections[0].page,
          sections[1].page,
          sections[2].page,
        ],
      ),
    );
  }
}
