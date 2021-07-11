import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String itemText;
  final double navbarWidth;

  NavbarItem(this.itemText, this.navbarWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: navbarWidth,
      width: navbarWidth,
      child: Center(
        child: Text(
          itemText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
