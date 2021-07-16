import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/user_colors.dart';
import '../models/projects.dart';

class ProjectsPage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  ProjectsPage({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

bool showInfo = false;

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    final projects = UserProjects.projects;

    void showContainer() {
      setState(() {
        showInfo = true;
        print(showInfo);
      });
    }

    void hideContainer() {
      setState(() {
        showInfo = false;
        print(showInfo);
      });
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 1000,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PROJECTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: 600,
                      child: GridView.count(
                        crossAxisCount: 4,
                        children: projects.map((element) {
                          return ProjectButtonHolder(
                            title: element.title,
                            imageUrl: element.imageUrl,
                            showContainer: showContainer,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: showInfo,
                child: InfoContainerHolder(hideContainer),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectButtonHolder extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback showContainer;

  ProjectButtonHolder({
    required this.title,
    required this.imageUrl,
    required this.showContainer,
  });

  @override
  Widget build(BuildContext context) {
    final double containerHeight = 250;
    final double containerWidth = 250;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: showContainer,
        child: Container(
          decoration: BoxDecoration(
            color: UserColors.navBarBorderColor,
            borderRadius: BorderRadius.circular(30),
            // border: Border.all(
            //   width: 5,
            //   color: UserColors.accentRedColor,
            // ),
          ),
          height: containerHeight,
          width: containerWidth,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: containerHeight,
                  width: containerHeight,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    width: containerWidth,
                    color: Colors.black26,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoContainerHolder extends StatelessWidget {
  final VoidCallback hideContainer;

  InfoContainerHolder(this.hideContainer);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: UserColors.navBarColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 2,
            ),
          ),
          padding: EdgeInsets.all(30),
          child: Container(
            child: TextButton(
              onPressed: hideContainer,
              child: Text('HIDE'),
            ),
          ),
        ),
      ),
    );
  }
}
