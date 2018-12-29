import 'package:flutter/material.dart';
import 'package:ngen/pages/daily/daily.dart';
import 'package:ngen/pages/home/side_drawer.dart';
import 'package:ngen/pages/about/about.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  final titles = [
    'Daily',
    'About'
  ];
  final menus = <Widget>[
    DailyPage(),
    AboutPage(),
  ];

  _onChangeMenu(int index) {
    setState(() => _pageIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[_pageIndex])),
      // body: Center(child: Text('My Page!')),
      body: menus[_pageIndex],
      drawer: SideDrawer(changeMenu: _onChangeMenu)
    );
  }
}
