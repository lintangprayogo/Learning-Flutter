import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Tab Bar"),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.comment),
                  text: "Comments",
                ),
                Tab(child: Image(image: AssetImage("assets/love.png"))),
                Tab(icon: Icon(Icons.computer)),
                Tab(text: "News")
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Center(child: Text("Tab One")),
              Center(child: Text("Tab Two")),
              Center(child: Text("Tab Three")),
              Center(child: Text("Tab Four")),
            ]),
          )),
    );
  }
}
