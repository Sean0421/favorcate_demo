
import 'package:favorcate_demo/core/router/router.dart';
import 'package:favorcate_demo/core/viewmodel/favor_view_model.dart';
import 'package:favorcate_demo/core/viewmodel/filter_view_model.dart';
import 'package:favorcate_demo/core/viewmodel/meal_view_model.dart';
import 'package:favorcate_demo/ui/shared/app_theme.dart';
import 'package:favorcate_demo/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
main() {
  //Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HYFilterViewModel(),
      ),
      ChangeNotifierProxyProvider<HYFilterViewModel, HYMealViewModel>(
        create: (context) => HYMealViewModel(),
        update: (context, filterVM, mealVM){
          mealVM.updateFilters(filterVM);
          return mealVM;
        },
      ),
      ChangeNotifierProxyProvider<HYFilterViewModel, HYFavorViewModel>(
        create: (context) => HYFavorViewModel(),
        update: (context, filterVM, favorVM) {
          favorVM.updateFilters(filterVM);
          return favorVM;
        },
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HYSizefit.initialize();

    return MaterialApp(
      title: "美食广场",
      //主题
      theme: HYAppTheme.normalTheme,
      debugShowCheckedModeBanner: false,
      //路由
      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}
