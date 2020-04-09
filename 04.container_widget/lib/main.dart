import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container Widget"),
        ),
        body: Container(
          color: Colors.redAccent,
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
              Colors.yellow,
              Colors.orange
            ])),
          ),
        ),
      ),
    );
  }
}
