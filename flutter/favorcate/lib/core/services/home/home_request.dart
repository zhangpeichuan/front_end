import '../http_request.dart';

import '../../model/category_model.dart';
class HYHomeRequest{
  static Future<List<HYCategoryModel>> getData() async {

    //1.发送网络请求
    const String url = '/category';
    final result = await HttpRequest.request(url);
    List<HYCategoryModel> categories = [];

    //2.json转modal
    final categoryList= result['category'];
    for(var category in categoryList){
      categories.add(HYCategoryModel.fromJson(category));
    }
    print(categories);
    return categories;
  }
}