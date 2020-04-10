import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = "This Is Text";
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Mehod"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(msg),
            RaisedButton(
                child: Text("Click Me"),
                onPressed: () {
                  setState(() {
                    msg = "This Button Has Been Clicked";
                  });
                })
          ],
        ),
      ),
    ));
  }
}
