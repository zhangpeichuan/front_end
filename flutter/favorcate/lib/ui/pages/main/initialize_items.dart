import 'package:flutter/material.dart';

import '../favor/favor.dart';
import '../home/home.dart';

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: '首页'),
  BottomNavigationBarItem(icon: Icon(Icons.favorite),label: '喜欢'),
];

List<Widget> pages = [
  HYHomeScreen(),
  HYFavorScreen(),
];