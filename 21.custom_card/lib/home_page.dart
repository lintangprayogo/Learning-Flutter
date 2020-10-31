import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Card"),
          backgroundColor: Colors.pink,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red[200], Colors.pink[300]])),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/01/11/17/56/tulips-1134103_960_720.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20,
                            MediaQuery.of(context).size.height * 0.35 + 50,
                            20,
                            20),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Beautiful Tulip At Tulip Lintang Garden",
                                style: TextStyle(
                                    color: Colors.pinkAccent, fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0,20 , 0,15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Posted On ",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text(
                                      "May 21,2019",
                                      style: TextStyle(
                                          color: Colors.pinkAccent, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Spacer(flex: 10,),
                                  Icon(Icons.favorite,size: 18,color: Colors.grey,),
                                  Spacer(flex: 1,),
                                  Text("3000"),
                                  Spacer(flex: 5,),
                                  Icon(Icons.message,size: 18,color: Colors.grey,),
                                  Spacer(flex: 1,),
                                  Text("500"),
                                  Spacer(flex: 10,)
                                


                                ],
                              )
                              

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
