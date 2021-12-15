import 'package:flutter/material.dart';

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
        title: Text('商品列表'),
      ),
      body: HYHomeContent(),
    );
  }
}
class HYHomeContent extends StatelessWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HYHomeProductItem('apple1','Macbook Product1','https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg'),
        HYHomeProductItem('apple2','Macbook Product2','https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg'),
        HYHomeProductItem('apple3','Macbook Product3','https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg'),
      ],
    );
  }
}
class HYHomeProductItem extends StatelessWidget {
  const HYHomeProductItem(this.title,this.desc,this.imageUrl, {Key? key}) : super(key: key);
  final String title;
  final String desc;
  final String imageUrl;
  final style1 = const TextStyle(fontSize: 24,color: Colors.orange);
  final style2 = const TextStyle(fontSize: 18,color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black45,
            width: 5,
          )
      ),
      child: Column(
        //修改交叉轴的对其方式
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: style1,),
          SizedBox(height: 5,),
          Text(desc,style: style2,),
          SizedBox(height: 5,),
          Image.network(imageUrl)
        ],
      ),
    );
  }
}
