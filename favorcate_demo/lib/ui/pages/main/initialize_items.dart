import 'package:favorcate_demo/ui/pages/favor/favor.dart';
import 'package:favorcate_demo/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  HYHomeScreen(),
  HYFavorScreen()
];

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
  BottomNavigationBarItem(icon: Icon(Icons.star), title: Text("收藏")),
];
