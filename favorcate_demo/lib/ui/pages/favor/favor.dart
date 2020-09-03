import 'package:flutter/material.dart';

import 'favor_content.dart';

class HYFavorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("收藏"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: HYFavorContent(),
      ),
    );
  }
}
