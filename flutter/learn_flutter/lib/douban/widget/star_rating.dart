import 'package:flutter/material.dart';
class HYStarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color selectedColor;
  final Color unselectedColor;
  final Widget selectedImage;
  final Widget unselectedImage;
  HYStarRating({
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget? unselectedImage ,
    Widget? selectedImage ,
    Key? key,}):unselectedImage = unselectedImage ?? Icon(Icons.star_border,color:unselectedColor,size: size,),
        selectedImage = selectedImage ?? Icon(Icons.star,color: selectedColor,size: size,),super(key: key);

  @override
  _HYStarRatingState createState() => _HYStarRatingState();
}
class _HYStarRatingState extends State<HYStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        ),
      ],
    );
  }
  List<Widget> buildUnselectedStar(){
    return List.generate(widget.count, (index) => widget.unselectedImage);
  }
  List<Widget> buildSelectedStar(){
    //1、创建stars
    List<Widget> stars = [];
    final star = widget.selectedImage;
    //2、构建满的star
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating/oneValue).floor();
    for (var i =0;i< entireCount;i++){
      stars.add(star);
    }
    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    //3、构建部分star
    final halfStar = ClipRect(
      clipper: HYStarClipper(leftWidth),
      child: star,
    );
    stars.add(halfStar);
    if (stars.length > widget.count ){
      return stars.sublist(0,widget.count);
    }else{
      return stars;
    }
  }
}
class HYStarClipper extends CustomClipper<Rect>{
  double width;
  HYStarClipper(this.width);
  @override
  getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }
  @override
  bool shouldReclip(HYStarClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != width;
  }
}