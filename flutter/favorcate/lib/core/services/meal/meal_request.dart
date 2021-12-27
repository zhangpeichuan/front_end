import '../http_request.dart';

import '../../model/meal_model.dart';
class HYMealRequest{
  static Future<List<HYMealModel>> getMealData() async {
    //1.发送网络请求
    final String url = '/meal';
    final result = await HttpRequest.request(url);
    print(result);
    List<HYMealModel> meals = [];
    final mealList = result['meal'];
    for(var meal in mealList){
      meals.add(HYMealModel.fromJson(meal));
    }
    return meals;
  }


}