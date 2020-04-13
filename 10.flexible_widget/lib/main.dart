import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flexible App"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(flex: 1, child: Container(margin: EdgeInsets.all(5),color: Colors.yellowAccent)),
                Flexible(flex: 1, child: Container(margin: EdgeInsets.all(5),color: Colors.orangeAccent)),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.redAccent,
                    ))
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.blueAccent,
            ),
          ),
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.greenAccent,
              ))
        ],
      ),
    ));
  }
}
