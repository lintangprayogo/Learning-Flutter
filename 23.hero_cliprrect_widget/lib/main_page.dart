import 'package:flutter/material.dart';
import 'package:hero_clip_widget/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Hero Clip Widget"),
        backgroundColor: Colors.deepOrange,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'jeruk',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
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
