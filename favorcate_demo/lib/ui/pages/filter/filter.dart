
import 'package:flutter/material.dart';

import 'filter_content.dart';

class HYFilterScreen extends StatelessWidget {
  static String routeName = "/filter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("过滤"),
      ),
      body: HYFilterContent(),
    );
  }
}
