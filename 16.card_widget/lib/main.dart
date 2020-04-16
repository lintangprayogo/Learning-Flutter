import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard("Lintang Prayogo",Icons.account_circle),
              buildCard("lintangprayogo12@gmail.com",Icons.email),
              buildCard("082216643372",Icons.phone)
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(String title,IconData iconData) {
    return Card(
              elevation: 5,
              child: Row(
                
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(iconData)
                      ),
                       Text(title)
                ],
              ),
            );
  }
}
