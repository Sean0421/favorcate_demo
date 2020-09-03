import 'package:favorcate_demo/core/viewmodel/favor_view_model.dart';
import 'package:favorcate_demo/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
      builder: (context, favorVM, child) {
        if(favorVM.favorMeals.length  == 0){
          return Center(
            child: Text("未收藏美食"),
          );
        }else {
          return ListView.builder(
              itemCount: favorVM.favorMeals.length,
              itemBuilder: (context, index){
                return HYMealItem(favorVM.favorMeals[index]);
              }
          );
        }
      },
    );
  }
}
