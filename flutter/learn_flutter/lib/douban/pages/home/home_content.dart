import 'package:flutter/material.dart';
import '../../service/home_request.dart';
import '../../model/home_model.dart';
class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  final List<MovieItem> movies = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //发送网络请求
    HomeRequest.requestMovieList(0).then((value) => movies.addAll(value)).catchError((error){
      print(error);
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context,index){
          return ListTile(
            title: Text('$index'),
          );
        });
  }
}
