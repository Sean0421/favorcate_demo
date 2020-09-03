
import 'package:favorcate_demo/ui/pages/filter/filter.dart';
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

class HYHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250.px,
        child: Drawer(
          child: Column(
            children: <Widget>[
              buildDrawerTitle(context),
              buildDrawerContent(Icon(Icons.restaurant), "进餐", (){
                Navigator.of(context).pop();
              },context ),
              buildDrawerContent(Icon(Icons.settings), "过滤" , (){
                Navigator.of(context).pushNamed(HYFilterScreen.routeName,);
              }, context),
            ],
          ),
        )
    );
  }

  Widget buildDrawerTitle(context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.px),
      alignment: Alignment(0, 0.5),
      width: double.infinity,
      height: 120.px,
      color: Colors.red,
      child: Text("开始动手", style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 30.px),),
    );
  }

  Widget buildDrawerContent(Widget icon, String title, Function handler,BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 20.px,),
          Text(title, style: TextStyle(fontSize: 18.px),)
        ],
      ),
      onTap: () {
        return handler();
      },
    );
  }
}
