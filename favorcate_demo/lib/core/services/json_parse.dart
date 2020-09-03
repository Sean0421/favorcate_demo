import 'dart:convert';

import 'package:favorcate_demo/core/model/category_model.dart';
import 'package:flutter/services.dart';

class HYJsonParse {
  static Future<List<HYCategoryModel>> getCategoryData() async {
    //1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");
//    print(jsonString);

    //2.将jsonString转成map/list
    final result = json.decode(jsonString);
//    print(result);
//    {category: [{id: c1, title: 意大利, color: 9C27B0}, {id: c2, title: 简单快捷, color: F44336},
//      {id: c3, title: 汉堡包, color: FF9800}, {id: c4, title: 德国, color: FFC107},
//      {id: c5, title: 轻盈可爱, color: 2196F3}, {id: c6, title: 异国情调, color: 4CAF50},
//      {id: c7, title: 早餐, color: 03A9F4}, {id: c8, title: 亚洲, color: 8BC34A},
//      {id: c9, title: 法国, color: E91E63}, {id: c10, title: 夏天, color: 009688}]}

    //3.将map中的内容转换成一个个对象
    final resultList = result["category"];
    List<HYCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(HYCategoryModel.fromJson(json));
    }
    return categories;
  }
}