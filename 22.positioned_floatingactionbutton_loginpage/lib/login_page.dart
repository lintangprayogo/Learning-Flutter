import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0XFFEEEEEE),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                   Color(0xFFB226B2),
                  Color(0xFFFF6DA7),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                "Dribble",
                style: TextStyle(fontFamily: "smileoftheocean",fontSize: 50,color: Colors.white),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                  Color(0xFFB226B2),
                  Color(0xFFFF4891),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
           Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF3E9EE)
               
                  ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
