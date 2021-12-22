import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/utils/log.dart';
import 'package:learn_flutter/douban/widget/dashed_line.dart';
import 'package:learn_flutter/douban/widget/star_rating.dart';
import '../../model/home_model.dart';

class HYHomeMoveItem extends StatelessWidget {
  const HYHomeMoveItem(this.movie,this.index,{Key? key}) : super(key: key);
  final MovieItem movie;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print(index);},
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border:Border(
              bottom: BorderSide(width: 8,color: Color(0xffcccccc))),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            builderHeader(),
            SizedBox(height: 8,),
            builderContent(),
            SizedBox(height: 8,),
            buildFooter(),

          ],
        ),
      ),
    );
  }
  Widget builderHeader(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color.fromARGB(255, 238, 205, 144)
      ),
      child: Text(movie.title ?? "No 1",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36)),),
    );
  }
  Widget builderContent(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        builerContentImage(),
        Expanded(
            child: IntrinsicWidth(
              child: Row(
                children: [
                  SizedBox(width: 8,),
                  builderContentInfo(),
                  SizedBox(width: 8,),
                  buildContentDashedLine(),
                  buildContentWish()
                ],
              ),
            ))

      ],
    );
  }
  Widget builerContentImage(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network("https://img0.baidu.com/it/u=231925290,3532665570&fm=26&fmt=auto",height: 150,width: 100,),
    );
  }
  Widget builderContentInfo(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          builerConentInfoTitle(),
          builerContentInfoRating(),
          buildConentInfoDesc(),
        ],
      ),
    );
  }
  Widget builerConentInfoTitle(){
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
            baseline: TextBaseline.alphabetic,
            alignment: PlaceholderAlignment.middle,
            child: Icon(Icons.play_circle_fill_outlined, color:Colors.redAccent,size: 24,),
          ),
          //展开列表... runes字符串获取Unicode编码
          ..."霸王别姬霸王姬霸别姬".runes.map((e) => TextSpan(
              text: String.fromCharCode(e),
              style: TextStyle(fontSize: 18,)
          )).toList(),
          ..."霸王别姬霸王姬霸王".runes.map((e) => TextSpan(
              text: String.fromCharCode(e),
              style: TextStyle(fontSize: 16,)
          )).toList(),
        ],
      ),
    );
  }

  Widget builerContentInfoRating(){
    return Row(
      children: [
        HYStarRating(rating: movie.rating ?? Random().nextDouble()+Random().nextInt(4),size: 20,),
        Text((Random().nextDouble()+Random().nextInt(4)).toStringAsFixed(2),style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36)),),
      ],
    );
  }
  Widget buildConentInfoDesc(){
    final genresString = "张三 李四 王五";
    final directorString = "张三 李四 王五";
    final actorString = "张三 李四 王五";
    return Text(
      "${genresString} / ${directorString} /${actorString}",
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
  Widget buildContentDashedLine(){
    return Container(
      height: 150,
      child: HYDashedLine(
        axis: Axis.vertical,
        count: 10,
        dashWidth: 1,
        dashHeight: 5,
        color: Colors.pink,),);
  }
  Widget buildContentWish(){
    return Image.asset('assets/images/home/wish.png');
  }
  Widget buildFooter(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),borderRadius: BorderRadius.circular(8),),
      child: Text('霸王别姬霸王别姬',style: TextStyle(color: Color(0xff666666),fontSize: 16),),
    );
  }
}
//头部排名
