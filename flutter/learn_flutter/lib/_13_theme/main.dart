import 'package:flutter/material.dart';
import 'second.dart';
import 'app_theme.dart';
main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primaryColor: Colors.pink,
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.orange),
      //   cardTheme: CardTheme(
      //     color: Colors.greenAccent,
      //     elevation: 10,
      //     shape: Border.all(width: 3, color: Colors.red),
      //       margin: EdgeInsets.all(10),
      //   ),
      //   // 6.按钮主题
      //   buttonTheme: ButtonThemeData(
      //       minWidth: 0,
      //       height: 25
      //   ),
      //     // 7.文本主题
      //     textTheme: TextTheme(
      //       subtitle1: TextStyle(fontSize: 30, color: Colors.blue),
      //       bodyText1: TextStyle(fontSize: 10),
      //     )
      // ),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
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
      body: Text('HelloWorld!'),
    );
      }
}

