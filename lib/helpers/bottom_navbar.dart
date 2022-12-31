import 'package:flutter/material.dart';

import '../models/bottom_navbar.dart';

final List<BottomNavbarModel> bottomBarListItems = [
  BottomNavbarModel(icon: Icons.explore_outlined, isSelected: true),
  BottomNavbarModel(icon: Icons.favorite_border, isSelected: false),
  BottomNavbarModel(icon: Icons.comment_outlined, isSelected: false),
  BottomNavbarModel(icon: Icons.account_circle_outlined, isSelected: false),
];
