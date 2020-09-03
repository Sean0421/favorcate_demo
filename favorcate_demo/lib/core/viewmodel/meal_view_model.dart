import 'package:favorcate_demo/core/services/meal_request.dart';

import 'base_view_model.dart';

class HYMealViewModel extends BaseMealViewModel{
  HYMealViewModel() {
    HYMealRequest.getMealData().then((value) {
      meals = value;
    });
  }
}

