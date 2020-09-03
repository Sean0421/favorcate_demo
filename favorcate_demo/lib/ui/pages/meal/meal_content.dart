import 'package:favorcate_demo/core/model/category_model.dart';
import 'package:favorcate_demo/core/model/meal_model.dart';
import 'package:favorcate_demo/core/viewmodel/meal_view_model.dart';
import 'package:favorcate_demo/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class HYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as HYCategoryModel;
    return Selector<HYMealViewModel, List<HYMealModel>>(
      selector: (context, mealVM) => mealVM.meals.where((element) => element.categories.contains(category.id)).toList(),
      shouldRebuild: (prev, next) => ListEquality().equals(prev, next),
      builder: (context, meals, child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return HYMealItem(meals[index]);
          },
        );
      },
    );
  }
}


//class HYMealContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final category = ModalRoute.of(context).settings.arguments as HYCategoryModel;
//    return Consumer<HYMealViewModel>(
//      builder: (context, mealVM, child) {
//        final meals = mealVM.meals.where((element) => element.categories.contains(category.id)).toList();
//        return ListView.builder(
//            itemCount: meals.length,
//            itemBuilder: (context, index) {
//              return ListTile(
//                title: Text("${meals[index].title}"),
//              );
//            }
//        );
//      },
//    );
//  }
//}
