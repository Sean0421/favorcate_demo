import 'package:favorcate_demo/core/model/meal_model.dart';

import 'base_view_model.dart';
import 'filter_view_model.dart';

class HYFavorViewModel extends BaseMealViewModel{
  List<HYMealModel>  _favorMeals = [];

  HYFilterViewModel _filterVM;

  List<HYMealModel> get favorMeals{
    return _favorMeals.where((element) {
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

  void addMeal(HYMealModel meal) {
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(HYMealModel meal) {
    _favorMeals.remove(meal);
    notifyListeners();
  }

  bool isFavor(HYMealModel meal) {
    return _favorMeals.contains(meal);
  }

  void handleMeal(HYMealModel meal) {
    if(isFavor(meal)){
      _favorMeals.remove(meal);
    }else {
      _favorMeals.add(meal);
    }
    notifyListeners();
  }
}