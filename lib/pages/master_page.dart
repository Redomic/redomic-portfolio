import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../models/page_section.dart';

import 'home_page.dart';
import 'about_page.dart';
import 'projects_page.dart';

class MasterPage extends StatefulWidget {
  final double navbarWidth;
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;

  MasterPage({
    required this.navbarWidth,
    required this.itemScrollController,
    required this.itemPositionsListener,
  });

  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
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
      child: ScrollablePositionedList.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: sections.length,
        itemBuilder: (context, index) => sections[index].page,
        itemScrollController: widget.itemScrollController,
        itemPositionsListener: widget.itemPositionsListener,
      ),
    );
  }
}
