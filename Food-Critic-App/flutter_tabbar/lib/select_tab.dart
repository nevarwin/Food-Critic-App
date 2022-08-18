import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import './top_tab_screen.dart';
import './bottom_tab_screen.dart';

class SelectTab extends StatelessWidget {
  const SelectTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _topTab() {
      Navigator.of(context).pushNamed(TabScreen.routeName);
    }

    void _bottomTab() {
      Navigator.of(context).pushNamed(BottomTabScreen.routeName);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Tab'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                _topTab();
              },
              icon: const Icon(Icons.arrow_upward),
            ),
            IconButton(
              onPressed: () {
                _bottomTab();
              },
              icon: const Icon(Icons.arrow_downward),
            ),
          ],
        ),
      ),
    );
  }
}
