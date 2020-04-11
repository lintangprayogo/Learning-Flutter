import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListView"),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(child: Text("Add Data"), onPressed: (){
                    setState(() {
                    counter++;
                    widgets.add(Text("Data #$counter",style: TextStyle(fontSize: 35),));
                    });
                   
                  }),
                  RaisedButton(child: Text("Remove Data"), onPressed: (){
                    setState(() {
                        if(widgets.isNotEmpty){
                          widgets.removeLast();
                          counter--;
                        }

                    });
                  })
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          )),
    );
  }
}
