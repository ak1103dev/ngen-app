import 'package:flutter/material.dart';
import 'package:ngen/pages/home/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final appTitle = 'NGEN';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
