import 'package:favorcate_demo/ui/pages/home/home_drawer.dart';
import 'package:favorcate_demo/ui/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

class HYMainScreen extends StatefulWidget {
  static final String routeName = "/";

  @override
  _HYMainScreenState createState() => _HYMainScreenState();
}

class _HYMainScreenState extends State<HYMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: HYHomeDrawer(),
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 14.px,
          unselectedFontSize: 14.px,
          currentIndex: _currentIndex,
          items: items,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
