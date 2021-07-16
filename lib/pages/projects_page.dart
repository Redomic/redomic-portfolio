import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/user_colors.dart';
import '../models/projects.dart';

class ProjectsPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  ProjectsPage({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    final projects = UserProjects.projects;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Projects',
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
                    children: projects
                        .map(
                          (element) => ProjectButtonHolder(
                            title: element.title,
                            imageUrl: element.imageUrl,
                          ),
                        )
                        .toList(),
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

class ProjectButtonHolder extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProjectButtonHolder({
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final double containerHeight = 250;
    final double containerWidth = 250;

    return Container(
      height: 250,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
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
      ),
    );
  }
}
