import 'package:favorcate_demo/ui/pages/detail/detail.dart';
import 'package:favorcate_demo/ui/pages/filter/filter.dart';
import 'package:favorcate_demo/ui/pages/main/main.dart';
import 'package:favorcate_demo/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';


class HYRouter {
  static final initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (context) => HYMainScreen(),
    HYMealScreen.routeName: (context) => HYMealScreen(),
    HYDetailScreen.routeName: (context) => HYDetailScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    if(settings.name == HYFilterScreen.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return HYFilterScreen();
        },
        fullscreenDialog: true
      );
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}