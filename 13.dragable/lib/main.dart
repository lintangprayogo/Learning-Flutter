import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color colorRed = Colors.red;
  Color colorYellow = Colors.yellow;
  Color colorTarget=Colors.black87;
  bool isAccepted=false;     
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Dragable App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Draggable<Color>(
                data: colorRed,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: colorRed,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging:SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: colorRed.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
                  Draggable<Color>(
                data: colorYellow,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: colorYellow,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging:SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: colorRed.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
             onWillAccept: (value)=>true,
             onAccept: (value){isAccepted=true; colorTarget=value;},
             builder: (context,candidates,rejected){
             return  (isAccepted)?SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: colorTarget,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ):SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                );

             },
            ),
        ],
      ),
    ));
  }
}
