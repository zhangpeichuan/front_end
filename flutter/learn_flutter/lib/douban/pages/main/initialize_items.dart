import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/douban/pages/main/main.dart';
import '../home/home.dart';
import '../group/group.dart';
import '../profile/profile.dart';
import '../subjects/subjects.dart';
import '../mall/mall.dart';



import 'bottom_bar_item.dart';

List<HYBottomBarItem> items = [
  HYBottomBarItem('home','首页'),
  HYBottomBarItem('subject','书影音'),
  HYBottomBarItem('group','小组'),
  HYBottomBarItem('mall','市集'),
  HYBottomBarItem('profile','我的'),
];
List<Widget> pages = [
  const HYHomePage(),
  const HYSubjectsPage(),
  const HYGroupPage(),
  const HYMallPage(),
  const HYProfilePage(),
];