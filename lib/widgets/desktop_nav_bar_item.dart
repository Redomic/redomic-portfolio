import 'package:flutter/material.dart';

class DesktopNavbarItem extends StatelessWidget {
  final String itemText;
  final int index;
  final double navbarWidth;

  DesktopNavbarItem(
    this.itemText,
    this.index,
    this.navbarWidth,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: navbarWidth,
        width: navbarWidth,
        child: Center(
          child: Text(
            itemText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
