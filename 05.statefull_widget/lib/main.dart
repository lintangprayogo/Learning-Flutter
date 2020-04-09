import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count=0;
  void tekanTombol(){
     setState(() {
            count++;
     });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("StackWidgetFullApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(count.toString(),style: TextStyle(fontSize: 10+count.toDouble()),),
            RaisedButton(
              child: Text("Counting"),
              onPressed: tekanTombol,
            )
          ],
        ),
      ),
    ));
  }
}
