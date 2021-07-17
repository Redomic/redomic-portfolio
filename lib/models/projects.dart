import 'package:flutter/material.dart';

import '../constants/user_colors.dart';

class LanguageUsage {
  final String language;
  final Color languageColor;
  final int percentUsed;

  LanguageUsage(
    this.language,
    this.languageColor,
    this.percentUsed,
  );
}

class UserProject {
  final int index;
  final String title;
  final String imageUrl;
  final String description;
  final bool isOpenSource;
  final String repoLink;
  final List<LanguageUsage> languagesUsed;
  final bool isComplete;

  UserProject({
    required this.index,
    required this.title,
    required this.imageUrl,
    required this.description,
    this.isOpenSource = true,
    required this.repoLink,
    required this.languagesUsed,
    required this.isComplete,
  });
}

class UserProjects {
  static List<UserProject> projects = [
    // PORTFOLIO SITE - 0
    UserProject(
      index: 0,
      title: 'Portfolio',
      imageUrl: 'https://i.imgur.com/1Pi4BF7.png',
      description:
          'This portfolio was made completely in Flutter except for the background which was made with Vanta.js',
      repoLink: 'https://github.com/Redomic/redomic-portfolio',
      languagesUsed: [
        LanguageUsage('Dart', UserColors.flutterColor, 90),
        LanguageUsage('HTML', UserColors.htmlColor, 10),
      ],
      isComplete: false,
    ),
    // CHAT APP - 1
    UserProject(
      index: 1,
      title: 'Chat App',
      imageUrl: 'https://i.imgur.com/7qKqqLf.png',
      description:
          'A Simple Chat app made with Flutter to learn Firebase DB Integration',
      repoLink: 'https://github.com/Redomic/chat-app',
      languagesUsed: [
        LanguageUsage('Dart', UserColors.flutterColor, 100),
      ],
      isComplete: true,
    ),
    // GREAT PLACES APP - 2
    UserProject(
      index: 2,
      title: 'Great Places App',
      imageUrl: 'https://i.imgur.com/7qKqqLf.png',
      description:
          'A Simple favorite places app made in Flutter to learn the Google Maps API',
      repoLink: 'https://github.com/Redomic/great-places-app',
      languagesUsed: [
        LanguageUsage('Dart', UserColors.flutterColor, 100),
      ],
      isComplete: false,
    ),
    // SHOP APP - 3
    UserProject(
      index: 3,
      title: 'Shop App',
      imageUrl: 'https://i.imgur.com/7qKqqLf.png',
      description:
          'A Simple Shop interface app made in Flutter to learn about the Firebase Rest API',
      repoLink: 'https://github.com/Redomic/shop-app',
      languagesUsed: [
        LanguageUsage('Dart', UserColors.flutterColor, 100),
      ],
      isComplete: true,
    ),
    // Delimeals App - 4
    UserProject(
      index: 4,
      title: 'Delimeals App',
      imageUrl: 'https://i.imgur.com/7qKqqLf.png',
      description:
          'A Simple favorite meals and recipes app made to learn Flutter',
      repoLink: 'https://github.com/Redomic/Delimeals-app',
      languagesUsed: [
        LanguageUsage('Dart', UserColors.flutterColor, 100),
      ],
      isComplete: true,
    ),
    // Personal Expenses App - 5
    UserProject(
      index: 5,
      title: 'Expenses App',
      imageUrl: 'https://i.imgur.com/7qKqqLf.png',
      description:
          'A Simple personal expense tracker app made to learn Flutter',
      repoLink: 'https://github.com/Redomic/Personal-Expenses-app',
      languagesUsed: [
        LanguageUsage('Dart', UserColors.flutterColor, 100),
      ],
      isComplete: true,
    ),
    // Sitescrapper - 6
    UserProject(
      index: 6,
      title: 'Sitescraper',
      imageUrl: 'https://i.imgur.com/0iPQJh7.png',
      description:
          'A Simple sitescraper python script that scrapes the news website quantamagazine.org, It was made for a school project',
      repoLink: 'https://github.com/Redomic/sitescraper_schoolproj',
      languagesUsed: [
        LanguageUsage('Python', UserColors.pythonColor, 100),
      ],
      isComplete: true,
    ),
  ];
}
