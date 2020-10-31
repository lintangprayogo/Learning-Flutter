import 'package:flutter/material.dart';
import 'package:positioned_floatingactionbutton_loginpage/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginPage(),
    );
  }
}