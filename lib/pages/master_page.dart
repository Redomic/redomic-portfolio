import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/page_section.dart';

import '../providers/page_controller.dart';

import 'home_page.dart';
import 'about_page.dart';
import 'projects_page.dart';

class MasterPage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  MasterPage(this.screenHeight, this.screenWidth);

  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController =
        Provider.of<UserPageControllerProvider>(context).pageController;
    final pageProvider = Provider.of<UserPageControllerProvider>(context);

    final sections = <PageSection>[
      PageSection(
        title: 'Home page',
        page: HomePage(
          screenHeight: widget.screenHeight,
          screenWidth: widget.screenWidth,
        ),
      ),
      PageSection(
        title: 'About page',
        page: AboutPage(
          screenHeight: widget.screenHeight,
          screenWidth: widget.screenWidth,
        ),
      ),
      PageSection(
        title: 'Projects page',
        page: ProjectsPage(
          screenHeight: widget.screenHeight,
          screenWidth: widget.screenWidth,
        ),
      ),
    ];

    return SizedBox(
      width: widget.screenWidth,
      height: widget.screenHeight,
      child: PageView(
        controller: pageController,
        allowImplicitScrolling: false,
        physics:
            widget.screenWidth > 1000 ? NeverScrollableScrollPhysics() : null,
        scrollDirection:
            widget.screenWidth > 1000 ? Axis.vertical : Axis.horizontal,
        onPageChanged: (index) {
          pageProvider.changePageIndexTo(index);
        },
        children: [
          sections[0].page,
          sections[1].page,
          sections[2].page,
        ],
      ),
    );
  }
}
