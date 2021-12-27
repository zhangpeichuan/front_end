import 'package:flutter/material.dart';

import 'package:favorcate/core/model/category_model.dart';


import '../../ui/pages/main/main.dart';
import '../../ui/pages/home/home.dart';
import '../../ui/pages/favor/favor.dart';
import '../../ui/pages/meal/meal.dart';
import '../../ui/pages/unkown/unknown.dart';
class HYRouter{
  static final Map<String,WidgetBuilder> routes = {
    HYMainSceen.routeName:(ctx)=>HYMainSceen(),
    HYMealScreen.routeName:(ctx)=>HYMealScreen(),
    HYFavorScreen.routeName:(ctx)=>HYFavorScreen(),

  };
  static final String initialRoute = HYMainSceen.routeName;
  static final RouteFactory generateRoute = (settings){
    if (settings.name == HYMealScreen.routeName){
      return MaterialPageRoute(builder: (ctx){
        return HYMealScreen();
      });
    }
  };
  static final RouteFactory unknownRoute = (settings){
    return MaterialPageRoute(builder: (ctx)=>HYUnkownScreen());
  };
}