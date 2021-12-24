import 'package:flutter/material.dart';
import 'package:learn_flutter/_12_animation/image_detail.dart';
import 'image_detail.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础Widget'),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 9,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          children: List.generate(20,(index){
                final imageUrl = 'https://picsum.photos/500/500?random=$index';
                return GestureDetector(
                  onTap: () => _pushImageDetail(context, imageUrl),
                  child: Hero(
                      tag: imageUrl,
                      child: Image.network(imageUrl,fit: BoxFit.cover)),
                );
              })),
    );
  }

  _pushImageDetail(BuildContext context, String imageUrl) {
    Navigator.of(context).push(PageRouteBuilder(
      // transitionDuration: Duration(seconds: 1),
      pageBuilder: (ctx, animation1, animation2) {
        return FadeTransition(
            opacity: animation1,
            child: HYImageDetailPage(
              imageURL: imageUrl,
            ));
      },
    ),
    );
  }
}
