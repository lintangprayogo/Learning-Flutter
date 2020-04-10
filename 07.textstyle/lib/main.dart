import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextStyle"),
        ),
        body: Center(
          child: Text(
            "This Text",
            style: TextStyle(
                fontFamily: "FeelingGood",
                fontSize: 40,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor:Colors.redAccent,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy
                ),
          ),
        ),
      ),
    );
  }
}
