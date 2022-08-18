import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_tabbar/fifth_tab.dart';
import 'package:flutter_tabbar/first_tab.dart';
import 'package:flutter_tabbar/fourth_tab.dart';
import 'package:flutter_tabbar/second_tab.dart';
import 'package:flutter_tabbar/third_tab.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({Key? key}) : super(key: key);

  static const routeName = '/bottomTabScreen';

  @override
  State<BottomTabScreen> createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const FirstTab(),
    const SecondTab(),
    const ThirdTab(),
    const FourthTab(),
    const FifthTab(),
  ];

  void _selectedPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Tab Bar'),
      ),
      body: Center(child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            tooltip: 'Settings',
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Accessibility',
          ),
        ],
      ),
    );
  }
}
