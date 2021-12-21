import 'package:flutter/material.dart';
import 'initialize_items.dart';
class HYMainPage extends StatefulWidget {
  const HYMainPage({Key? key}) : super(key: key);

  @override
  _HYMainPageState createState() => _HYMainPageState();
}

class _HYMainPageState extends State<HYMainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            print('$_currentIndex');
          });
        },
      ),
    );
  }
  //方法
  BottomNavigationBarItem buildBottomItem(iconName,title){
    return BottomNavigationBarItem(
      label:title,
      icon: Image.asset('assets/images/tabbar/$iconName.png',width: 32,),
      activeIcon: Image.asset('assets/images/tabbar/${iconName}_active.png',width: 32),
      );
  }
}
