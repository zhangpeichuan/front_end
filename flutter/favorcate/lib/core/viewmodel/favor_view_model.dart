import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/foundation.dart';

class HYFavorViewModel extends ChangeNotifier{
  List<HYMealModel> _favorMeals = [];

  List<HYMealModel> get favorMeals => _favorMeals;

  bool isFavor(HYMealModel meal) {
    return _favorMeals.contains(meal);
  }
  void addMeal(HYMealModel meal){
    _favorMeals.add(meal);
    notifyListeners();
  }
  void removeMeal(HYMealModel meal){
    _favorMeals.remove(meal);
    notifyListeners();
  }
  void handleMeal(HYMealModel meal) {
    if(isFavor(meal)){
      _favorMeals.remove(meal);
    }else {
      _favorMeals.add(meal);
    }
    notifyListeners();
  }
}