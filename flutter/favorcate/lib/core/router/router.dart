import 'package:flutter/material.dart';


import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/favor/favor.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:favorcate/ui/pages/unkown/unknown.dart';
import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
class HYRouter{
  static final Map<String,WidgetBuilder> routes = {
    HYMainSceen.routeName:(ctx)=>HYMainSceen(),
    HYMealScreen.routeName:(ctx)=>HYMealScreen(),
    HYFavorScreen.routeName:(ctx)=>HYFavorScreen(),
    HYDetailSceen.routeName:(ctx)=>HYDetailSceen(),
    HYFilterScreen.routeName:(ctx)=>HYFilterScreen(),
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