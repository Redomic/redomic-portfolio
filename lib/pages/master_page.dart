import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../models/page_section.dart';

import 'starting_page.dart';
import 'about_page.dart';

class MasterPage extends StatefulWidget {
  final double navbarWidth;

  MasterPage(this.navbarWidth);
  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width - widget.navbarWidth;
    final screenHeight = mediaQuery.size.height;

    final sections = <PageSection>[
      PageSection(
        title: 'Starting page',
        page: StartingPage(
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
    ];

    // return SingleChildScrollView(
    //   physics: NeverScrollableScrollPhysics(),
    //   child: Column(
    //     children: [

    //     ],
    //   ),
    // );

    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: ScrollablePositionedList.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: sections.length,
        itemBuilder: (context, index) => sections[index].page,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
    );
  }
}
