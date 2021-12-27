import 'package:flutter/material.dart';

import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/meal/meal_request.dart';


class HYMealViewModel extends ChangeNotifier{
  List<HYMealModel> _meals = [];

  List<HYMealModel> get meals => _meals;

  HYMealViewModel(){
    print('HYMealViewModel');
    HYMealRequest.getMealData().then((value){
      print('$value');
      _meals = value;
      notifyListeners();
    });
  }
}