import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Field Widget")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    icon: Icon(Icons.edit),
                    suffix: Container(width: 5,height: 5,color: Colors.red,),
                    prefixIcon: Icon(Icons.email),
                    prefixText:"Email" ,
                    prefixStyle: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20),
                    hintText: "Please Input Your Email",
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder()),
                maxLength: 30,
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
