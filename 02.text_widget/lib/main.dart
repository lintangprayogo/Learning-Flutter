import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter")),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 50,
                child: Text(
                  "Saya sedang melatih kemampuan flutter saya agar jadi lebih keren",
                  // maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                  // softWrap: false,
                  // textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20),
                ))),
      ),
    );
  }
}
