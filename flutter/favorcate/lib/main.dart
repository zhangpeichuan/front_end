import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/router/router.dart';
import 'ui/shared/app_theme.dart';
import 'ui/shared/size_fix.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (ctx)=>FilterViewModel()),
      ChangeNotifierProxyProvider<FilterViewModel,HYMealViewModel>(
          create: (ctx)=>HYMealViewModel(),
          update: (ctx,filterVM,mealVM){
            //调用MealViewModel写好的过滤方法
            mealVM!.updateFilters(filterVM);
           return mealVM;
      }),
      ChangeNotifierProvider(create: (ctx)=>HYFavorViewModel(),),

    ],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize();
    return MaterialApp(
      title: '美食广场',
      //路由
      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routes,
      onGenerateRoute:HYRouter.generateRoute,
      onUnknownRoute:HYRouter.unknownRoute,
      //主题
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
