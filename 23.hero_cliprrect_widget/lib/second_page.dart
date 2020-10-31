import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text("Hero Clip Widget"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Hero(
          tag: 'jeruk',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1580052614034-c55d20bfee3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
