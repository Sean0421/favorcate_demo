
import 'package:favorcate_demo/core/model/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

class HYDetailScreen extends StatelessWidget {
  static final String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final _meal = ModalRoute.of(context).settings.arguments as HYMealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(_meal.title),
      ),
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.network(_meal.imageUrl, height: 300.px, width: double.maxFinite, fit: BoxFit.cover,),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.px),
                child: Text("制作材料", style: Theme.of(context).textTheme.headline2,),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.px),
              height: _meal.ingredients.length * 40.px,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1.px
                    ),
                    borderRadius: BorderRadius.circular(5.px),
                    color: Colors.white
                ),
                padding: EdgeInsets.all(10.px),
                child: ListView.builder(
                    physics: new NeverScrollableScrollPhysics(),
                    itemCount: _meal.ingredients.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.px),
                          color: Colors.orange,
                        ),
                        margin: EdgeInsets.all(5.px),
                        height: 30.px,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 5.px,),
                            Text(_meal.ingredients[index]),
                          ],
                        ),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite,),
        onPressed: (){},
      ),
    );
  }
}
