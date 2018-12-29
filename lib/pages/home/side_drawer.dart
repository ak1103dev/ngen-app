import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  final changeMenu;

  SideDrawer({Key key, this.changeMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Daily'),
            onTap: () {
              changeMenu(0);
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              changeMenu(1);
            },
          ),
        ],
      ),
    );
  }
}