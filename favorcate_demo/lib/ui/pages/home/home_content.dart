import 'package:favorcate_demo/core/model/category_model.dart';
import 'package:favorcate_demo/core/services/json_parse.dart';
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

import 'home_category_item.dart';

//用futureBuilder来请求数据,局限性，用于较少需要频繁调用的地方
//class HYHomeContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return FutureBuilder<List<HYCategoryModel>>(
//      future: HYJsonParse.getCategoryData(),
//      builder: (context, snapshot) {
//        if (!snapshot.hasData) {
//          return Center(
//              child: CircularProgressIndicator());
//        };
//        if(snapshot.error != null) {
//          return Center(child: Text("请求失败"),);
//        }
//        final categories = snapshot.data;
//        return GridView.builder(
//            padding: EdgeInsets.all(20.px),
//            itemCount: categories.length,
//            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                crossAxisCount: 2,
//                mainAxisSpacing: 20.px,
//                crossAxisSpacing: 20.px,
//                childAspectRatio: 1.5),
//            itemBuilder: (context, index) {
//              return HYHomeCategoryItem(categories[index]);
//            });
//      },
//    );
//  }
//}

class HYHomeContent extends StatefulWidget {
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> _categories = [];

  @override
  void initState() {
    super.initState();

    HYJsonParse.getCategoryData().then((value) {
      setState(() {
        _categories = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(20.px),
        itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.px,
            crossAxisSpacing: 20.px,
            childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return HYHomeCategoryItem(_categories[index]);
        });
  }
}
