import 'dart:convert';

import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/services.dart';

class JsonParse{
  static Future<List<HYCategoryModel>> getCategoryData() async{
    List<HYCategoryModel> categoryList = [];
    // 1. 加载json文件
    final jsonString = await rootBundle.loadString('assets/json/category.json');
    // 2. 将jsonString转成map/json
    final result = json.decode(jsonString);
    // 3. 将map中的内容转成对象
    final categorys = result['category'];
    for (var category in categorys){
      categoryList.add(HYCategoryModel.fromJson(category));
    }
    print(categoryList);
    return categoryList;


  }
}