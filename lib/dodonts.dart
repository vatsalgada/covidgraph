import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dod extends StatefulWidget{
  Dod1 createState()=> Dod1();
}

class Dod1 extends State<Dod>{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bluesoft",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Precaution"),
      ),
      body: getListView(),
    ),
  );
}

// ignore: missing_return
Widget getListView() {
  // ignore: unused_local_variable
  var listView = ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: FittedBox(
            child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    width: 300,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(30.0),
                      child: Image(
                          alignment: Alignment.center,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQlHv1gZKKQha-UKSP7RnI6UghI3uDzjOTBnw&usqp=CAU')),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Row(children: <Widget>[
                      Text(
                        "Wear Mask Whenever Going Out In Public",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontFamily: 'KronaOne',
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: FittedBox(
            child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Row(children: <Widget>[
                      Text(
                        "Clean Your Vegetables Before Using Them",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontFamily: 'KronaOne',
                        ),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    width: 300,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(30.0),
                      child: Image(
                          alignment: Alignment.center,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQlHv1gZKKQha-UKSP7RnI6UghI3uDzjOTBnw&usqp=CAU')),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: FittedBox(
            child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    width: 250,
                    height: 250,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(30.0),
                      child: Image(
                          alignment: Alignment.center,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQlHv1gZKKQha-UKSP7RnI6UghI3uDzjOTBnw&usqp=CAU')),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40.0, left: 40.0),
                    child: Row(children: <Widget>[
                      Text(
                        "    Wash Your hands Regularly",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontFamily: 'KronaOne',
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: FittedBox(
            child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Row(children: <Widget>[
                      Text(
                        "Wear Mask Whenever Going Out In Public",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontFamily: 'KronaOne',
                        ),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    width: 300,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(30.0),
                      child: Image(
                          alignment: Alignment.center,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQlHv1gZKKQha-UKSP7RnI6UghI3uDzjOTBnw&usqp=CAU')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ],
  );
  return listView;
  }
}