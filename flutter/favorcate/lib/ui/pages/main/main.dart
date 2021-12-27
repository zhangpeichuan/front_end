import 'initialize_items.dart';
import 'package:flutter/material.dart';
class HYMainSceen extends StatefulWidget {
  static final String routeName = '/';

  const HYMainSceen({Key? key}) : super(key: key);

  @override
  State<HYMainSceen> createState() => _HYMainSceenState();
}

class _HYMainSceenState extends State<HYMainSceen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('美食广场'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 14.0,
        currentIndex: _currentIndex,
        items: items,
      onTap: (index){
          setState(() => _currentIndex = index);
      },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
    );
  }
}
