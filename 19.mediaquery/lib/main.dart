import 'package:flutter/material.dart';
import 'package:mediaquery/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MainPage(),
    );
  }
}