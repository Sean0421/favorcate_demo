import 'package:favorcate_demo/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

class HYHomeCategoryItem extends StatelessWidget {
  final _category;

  HYHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: _category.cColor,
            borderRadius: BorderRadius.circular(12.px),
            gradient:
            LinearGradient(colors: [_category.cColor.withOpacity(.7), _category.cColor])),
        alignment: Alignment.center,
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(HYMealScreen.routeName, arguments: _category);
      },
    );
  }
}