import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack And Align Widget"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: Container(
                          color: Colors.grey,
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.white,
                        ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: Container(
                          color: Colors.white,
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.grey,
                        ))
                      ],
                    ))
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "This Is Text On Center Of Our Stack",
                          style: TextStyle(fontSize: 30),
                        )),
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment(0,0.5),
                child: RaisedButton(
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    color: Colors.amber))
          ],
        ),
      ),
    );
  }
}
