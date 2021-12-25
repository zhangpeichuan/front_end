import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second.dart';
import 'app_theme.dart';
main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //1、亮度
        brightness: Brightness.light,
        //MaterialColor是Color的子类
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.blue),
        cardTheme: CardTheme(
          color: Colors.greenAccent,
          elevation: 20,
          shape: Border.all(width: 3, color: Colors.red),
            margin: EdgeInsets.all(10),
        ),
        // 6.按钮主题
        buttonTheme: ButtonThemeData(
            minWidth: 10,
            height: 25,
          buttonColor: Colors.purple,
          textTheme: ButtonTextTheme.accent
        ),
        //   // 7.文本主题
          textTheme: TextTheme(
            subtitle2: TextStyle(fontSize: 30, color: Colors.blue),
            bodyText1: TextStyle(fontSize: 16,color: Colors.lightBlueAccent),
            headline3: TextStyle(fontSize:20, color: Colors.green),
          ),
      ),
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
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
        title: Text('Theme'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(PageRouteBuilder(
            // transitionDuration: Duration(seconds: 1),
            pageBuilder: (ctx, animation1, animation2) {
              return FadeTransition(
                  opacity: animation1,
                  child: HYSecondPage());
            },
          ),
          );
        },
          child:Icon(Icons.add)
      ),
      body: Center(
        child: Column(children:[
          Text('HelloWorld!'),
          Text('HelloWorld!'),
          Text('HelloWorld!',style: Theme.of(context).textTheme.headline2,),

          Switch(value: true, onChanged: (value){}),
          CupertinoSwitch(value: true, onChanged: (value){},activeColor: Colors.red,),
          RaisedButton(onPressed: (){},child: Text('R'),),
          Card(child: Text('你好，张三李四王五',style: TextStyle(fontSize: 30,color: Colors.green),)),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: '分类'),

        ],
      ),
    );
      }
}

