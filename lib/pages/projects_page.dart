import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
int currentIndex = 0;

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    final projects = UserProjects.projects;

    void showContainer(int index) {
      setState(() {
        currentIndex = index;
        showInfo = true;
      });
    }

    void hideContainer() {
      setState(() {
        showInfo = false;
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
                            showContainer: () => showContainer(element.index),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              InfoContainerHolder(
                showInfo,
                projects[currentIndex],
                hideContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectButtonHolder extends StatefulWidget {
  final String title;
  final String imageUrl;
  final VoidCallback showContainer;

  ProjectButtonHolder({
    required this.title,
    required this.imageUrl,
    required this.showContainer,
  });

  @override
  _ProjectButtonHolderState createState() => _ProjectButtonHolderState();
}

class _ProjectButtonHolderState extends State<ProjectButtonHolder> {
  @override
  Widget build(BuildContext context) {
    final double containerHeight = 250;
    final double containerWidth = 250;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        onTap: showInfo ? null : widget.showContainer,
        child: Container(
          decoration: BoxDecoration(
            color: UserColors.navBarBorderColor,
            borderRadius: BorderRadius.circular(30),
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
                    widget.imageUrl,
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
                  widget.title,
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
  final bool showInfo;
  final UserProject project;
  final VoidCallback hideContainer;

  InfoContainerHolder(
    this.showInfo,
    this.project,
    this.hideContainer,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInCubic,
          height: showInfo ? 600 : 0,
          width: 800,
          decoration: BoxDecoration(
            color: UserColors.navBarColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 2,
            ),
          ),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      disabledColor: Colors.transparent,
                      color: UserColors.accentRedColor,
                      onPressed: hideContainer,
                      icon: Icon(
                        Icons.close,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 250,
                          width: 250,
                          child: Image.network(
                            project.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  project.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  project.description,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                if (project.isOpenSource)
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        launch(project.repoLink);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                UserColors.accentRedColor),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Github Repo',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Current Status: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                project.isComplete ? Colors.green : Colors.red,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            project.isComplete ? 'COMPLETED' : 'ONGOING',
                            style: TextStyle(
                              color: project.isComplete
                                  ? Colors.green
                                  : Colors.red,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...project.languagesUsed.map((element) {
                      return LanguagesFillBarHolder(
                        language: element,
                      );
                    }).toList(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguagesFillBarHolder extends StatelessWidget {
  const LanguagesFillBarHolder({
    required this.language,
  });

  final LanguageUsage language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 0),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: 100,
              child: Text(
                language.language,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 300,
                height: 20,
                child: Stack(
                  children: [
                    Container(
                      color: UserColors.navBarBorderColor,
                    ),
                    FractionallySizedBox(
                      widthFactor: language.percentUsed / 100,
                      child: Container(
                        color: language.languageColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: 100,
              child: Center(
                child: Text(
                  '${language.percentUsed}%',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
