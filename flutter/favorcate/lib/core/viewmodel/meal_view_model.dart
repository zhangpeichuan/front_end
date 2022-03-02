import 'package:flutter/material.dart';

import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/meal/meal_request.dart';

import 'filter_view_model.dart';


class HYMealViewModel extends ChangeNotifier{
  List<HYMealModel> _meals = [];
  late FilterViewModel _filterVM; //增加过滤

  List<HYMealModel> get meals {
    return _meals.where((meal) {
      //    这里进行过滤判断
      if (_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if (_filterVM.isLactoseFree && !meal.isLactoseFree) return false;
      if (_filterVM.isVegetarian && !meal.isVegetarian) return false;
      if (_filterVM.isVegan && !meal.isVegan) return false;
      return true;
    }).toList();
  }

  HYMealViewModel(){
    print('HYMealViewModel');
    HYMealRequest.getMealData().then((value){
      print('$value');
      _meals = value;
      notifyListeners();
    });
  }
  //  更新过滤
  void updateFilters(FilterViewModel filterVM) {
    _filterVM = filterVM;
  }
}