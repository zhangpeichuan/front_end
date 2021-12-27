import 'dart:ui';
class HYCategoryModel {
  late String id;
  late String title;
  late String color;
  late Color cColor;

  HYCategoryModel(this.id, this.title, this.color);

  HYCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    color = json["color"];
    //1.将color转成十六进制的数字
    final colorInt = int.parse(color,radix: 16);
    //2、将透明度加进去
    cColor = Color(colorInt | 0xff000000);
  }
}
