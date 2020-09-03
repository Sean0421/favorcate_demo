
import 'package:favorcate_demo/core/model/category_model.dart';
import 'package:favorcate_demo/ui/pages/meal/meal_content.dart';
import 'package:flutter/material.dart';

class HYMealScreen extends StatelessWidget {
  static String routeName = "/meal";

  @override
  Widget build(BuildContext context) {
    //获取参数
    final category = ModalRoute.of(context).settings.arguments as HYCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("${category.title}"),
      ),
      body: HYMealContent(),
    );
  }
}
