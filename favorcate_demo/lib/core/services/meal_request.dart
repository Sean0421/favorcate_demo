import 'package:favorcate_demo/core/services/http_request.dart';
import 'package:favorcate_demo/core/model/meal_model.dart';

class HYMealRequest {
  static Future<List<HYMealModel>> getMealData() async {
    //1.发送网络请求
    final String url= "/meal";
    final result = await HttpRequest.request(url);

    //2.json转modal
    final mealArray = result["meal"];
//    print(mealArray);

    final List<HYMealModel> mealData = [];
    for(var data in mealArray){
//      print(data);
      mealData.add(HYMealModel.fromJson(data));
    }
//    print(mealData[1]);
    return mealData;
}
}