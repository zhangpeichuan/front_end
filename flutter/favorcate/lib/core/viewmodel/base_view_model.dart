
import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class BaseMealViewModel extends ChangeNotifier{
  List<HYMealModel> _meals = [];

  List<HYMealModel> get meals => _meals;

  set meals(List<HYMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}