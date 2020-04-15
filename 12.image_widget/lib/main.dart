import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              color: Colors.black87,
              padding: EdgeInsets.all(10),
              child: Image(
                  image: NetworkImage(
                      "https://cdna.artstation.com/p/assets/images/images/019/406/176/large/ian-matining-asta-black-clover.jpg?1563346667")),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              color: Colors.black87,
              padding: EdgeInsets.all(10),
              child: Image(
                  image:AssetImage("images/blackbull.jpg"),
                  fit: BoxFit.scaleDown,
              )
            ),
          ],
        )),
      ),
    );
  }
}
