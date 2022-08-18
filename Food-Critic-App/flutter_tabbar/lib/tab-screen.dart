import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabbar/fifth-tab.dart';
import 'package:flutter_tabbar/first-tab.dart';
import 'package:flutter_tabbar/fourth-tab.dart';
import 'package:flutter_tabbar/second-tab.dart';
import 'package:flutter_tabbar/third-tab.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
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
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.greenAccent,
                  ),
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.white,
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.north),
                    ),
                    Tab(
                      icon: Icon(Icons.east),
                    ),
                    Tab(
                      icon: Icon(Icons.south),
                    ),
                    Tab(
                      icon: Icon(Icons.west),
                    ),
                    Tab(
                      icon: Icon(Icons.phishing),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
              FourthTab(),
              FifthTab(),
            ],
          ),
        ),
      ),
    );
  }
}
