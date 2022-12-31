import 'package:flutter/material.dart';
import 'package:layout_pesawat/helpers/bottom_navbar.dart';
import 'package:layout_pesawat/theme.dart';

import '../models/bottom_navbar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  List<BottomNavbarModel> bottomNavbar = bottomBarListItems;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      padding: EdgeInsets.all(20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(bottomNavbar.length, (index) {
            var barBottom = bottomNavbar[index];

            return IconButton(
              icon: Icon(
                barBottom.icon,
                color: barBottom.isSelected! ? mainYellow : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  bottomNavbar.forEach(
                    (element) {
                      element.isSelected = element == bottomNavbar;
                    },
                  );
                });
              },
            );
          })),
    );
  }
}
