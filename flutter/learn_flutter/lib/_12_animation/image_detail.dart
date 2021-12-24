import 'package:flutter/material.dart';

class HYImageDetailPage extends StatelessWidget {
  final String imageURL;
  const HYImageDetailPage({Key? key,required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Hero(
            tag: imageURL,
            child: Image(
              image: NetworkImage(imageURL),
              fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
