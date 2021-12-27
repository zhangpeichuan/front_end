import 'package:flutter/material.dart';

import 'home_category_item.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/services/json_parse.dart';

import 'package:favorcate/core/services/home/home_request.dart';
import '../../../core/extension/int_extension.dart';

// class HYHomeContent extends StatelessWidget {
//   const HYHomeContent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: JsonParse.getCategoryData(),
//       builder: (context,snapshot){
//         if (! snapshot.hasData){
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//         if (snapshot.error != null){
//           return Center(
//             child: Text('请求失败'),
//           );
//         }
//         final categories = snapshot.data as List<HYCategoryModel>;
//         return GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 20.px,
//               crossAxisSpacing: 20.px,
//               childAspectRatio: 1.5
//           ),
//           itemCount: categories.length,
//           itemBuilder:(ctx,index){
//             return HYHomeCategoryItem(category: categories[index]);
//           },
//         );
//       },
//     );
//   }
// }


class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Json解析
    // JsonParse.getCategoryData().then((value) {
    //   setState(() {
    //     categories=value;
    //   });
    // });
    // 网络请求
    HYHomeRequest.getData().then((value){
      setState(() {
        categories=value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.px,
            crossAxisSpacing: 20.px,
            childAspectRatio: 1.5
        ),
        itemCount: categories.length,
        itemBuilder:(ctx,index){
          return HYHomeCategoryItem(category: categories[index]);
        },
    );
  }
}
