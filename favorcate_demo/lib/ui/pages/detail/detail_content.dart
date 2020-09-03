import 'package:favorcate_demo/core/model/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

class HYDetailContent extends StatelessWidget {
  final HYMealModel _meal;

  HYDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerImage(),
          buildMakeTitle("制作材料", context),
          buildMakeMaterial(context),
          buildMakeTitle("制作步骤", context),
          buildMakeSteps(context)
        ],
      ),
    );
  }

  //1.横幅图片
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,
      child: Image.network(_meal.imageUrl),
    );
  }

  //2.制作材料
  Widget buildMakeMaterial(BuildContext context) {
    return buildMakeContentList(
        context: context,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _meal.ingredients.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.px, horizontal: 10.px),
                  child: Text(_meal.ingredients[index]),
                ),
              );
            })
    );
  }

  //3.制作步骤
  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContentList(
        context: context,
        child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          itemCount: _meal.steps.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text("#${index+1}"),
                ),
                title: Text(_meal.steps[index]),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            }
        )
    );
  }

  //4.公共方法
  Widget buildMakeTitle(String title, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.px),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildMakeContentList({BuildContext context, Widget child}) {
    return Container(
      padding: EdgeInsets.all(8.px),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.px)),
      width: MediaQuery.of(context).size.width - 30.px,
      child: child,
    );
  }
}
