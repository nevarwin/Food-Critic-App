import 'package:flutter/material.dart';
import 'package:flutter_tabbar/fifth_tab.dart';
import 'package:flutter_tabbar/first_tab.dart';
import 'package:flutter_tabbar/fourth_tab.dart';
import 'package:flutter_tabbar/second_tab.dart';
import 'package:flutter_tabbar/third_tab.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  static const routeName = '/topTabScreen';

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with TickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('Demo'),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  controller: _controller,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepOrange,
                  ),
                  tabs: const <Widget>[
                    Tab(
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                    ),
                    Tab(
                      icon: Icon(Icons.accessibility),
                    ),
                    Tab(
                      icon: Icon(Icons.analytics),
                    ),
                    Tab(
                      icon: Icon(Icons.phishing),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _controller,
            children: const [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
              FourthTab(),
              FifthTab(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.animateTo(_selectedIndex += 1);
            print(_selectedIndex);
            if (_selectedIndex > 4) {
              _controller.animateTo(_selectedIndex = 0);
            }
          },
          child: const Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}
