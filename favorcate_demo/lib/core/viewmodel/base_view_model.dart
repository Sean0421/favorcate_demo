import 'package:favorcate_demo/core/model/meal_model.dart';
import 'package:flutter/material.dart';

import 'filter_view_model.dart';

class BaseMealViewModel extends ChangeNotifier{
  List<HYMealModel> _meals = [];

  HYFilterViewModel _filterVM;

  List<HYMealModel> get meals {
    return _meals.where((element) {
      if(_filterVM.isGlutenFree == true && element.isGlutenFree == false) return false;
      if(_filterVM.isLactoseFree == true && element.isLactoseFree == false) return false;
      if(_filterVM.isVegetarian == true && element.isVegetarian == false) return false;
      if(_filterVM.isVegan == true && element.isVegan == false) return false;
      return true;
    }).toList();
  }

  void updateFilters(HYFilterViewModel filterVM){
    _filterVM = filterVM;
  }

  set meals(List<HYMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}