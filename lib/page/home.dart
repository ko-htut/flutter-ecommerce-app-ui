import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:kmart_codex/page/main/main_page.dart';

import 'category/category_page.dart';
import 'other/other_page.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> _widgets = <Widget>[
    MainPage(),
    Category(),
    Other(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.cyan,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(AntIcons.home_outline),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntIcons.appstore_outline),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntIcons.menu),
            title: Text('Menu'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
