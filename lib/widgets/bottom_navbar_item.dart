import 'package:flutter/material.dart';
import 'package:flutter_project_house_app/theme.dart';

class ButtomNavbarItem extends StatelessWidget {
  // final String imageUrl;
  final Icon ikon;
  final bool isActive;

  const ButtomNavbarItem({
    required this.ikon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        // Icon Navbar
        // Icon(
        //   Icons.home,
        //   size: 35,
        //   color: whiteColor,
        // ),
        ikon,
        const Spacer(),
        // line indicator navbar
        isActive
            ? Container(
                height: 2,
                width: 30,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10))),
              )
            : Container(),
      ],
    );
  }
}
