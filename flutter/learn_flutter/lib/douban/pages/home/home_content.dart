import 'package:flutter/material.dart';
import '../../service/home_request.dart';
import '../../model/home_model.dart';
import 'home_movie_item.dart';
import '../../utils/log.dart';
class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  final List<MovieItem> movies = List.generate(20, (index) => MovieItem()).toList();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HYLog("--------", StackTrace.current);
    //发送网络请求
    HomeRequest.requestMovieList(0).then((value) => movies.addAll(value)).catchError((error){
      //print(error);
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context,index){
          HYLog('itemBuilder $index', StackTrace.current);
          return HYHomeMoveItem(movies[index],index);
        });
  }
}
