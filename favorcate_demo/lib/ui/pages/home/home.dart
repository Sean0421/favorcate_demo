import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_content.dart';

class HYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HYHomeAppBar(context),
      body: HYHomeContent(),
    );
  }
}
