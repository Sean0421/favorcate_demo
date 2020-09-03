
import 'package:favorcate_demo/core/model/meal_model.dart';
import 'package:favorcate_demo/ui/pages/detail/detail_content.dart';
import 'package:flutter/material.dart';

import 'detail_floating_button.dart';

class HYDetailScreen extends StatelessWidget {
  static final String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final _meal = ModalRoute.of(context).settings.arguments as HYMealModel;

    return Scaffold(
        appBar: AppBar(
          title: Text(_meal.title),
        ),
        body: HYDetailContent(_meal),
      floatingActionButton: HYDetailFloatingButton(_meal),
    );
  }
}