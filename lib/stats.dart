import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './statstwo.dart';
import 'package:http/http.dart' as http;
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(new MaterialApp(
  home: new StatPage(),
));

class StatPage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<StatPage> {
  final String url = "https://api.covid19india.org/data.json";

  List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['statewise'];
    });
    return "Success";
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white70,
        title: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text("India      Total  Active  Recovered  Death", style: TextStyle(color: Colors.black, fontSize: 15.0)),


            ],
          ),

        ),

      ),

      body:Container(
        child: new ListView.builder(
            itemCount: data == null ? 0 : data.length - 1,
            itemBuilder: (BuildContext context, int index) {
              var a = data[index]["deltaconfirmed"];
              var a1 = data[index]["confirmed"];
              var c = data[index]["deltarecovered"];
              var c1 = data[index]["recovered"];
              var d = data[index]["deltadeaths"];
              var d1 = data[index]["deaths"];
              return new Container(
                child: new Center(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ScreenTwo(data[index]["state"]),

                            ));
                          },


                          child: Container(

                            child: Column(
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.only(right: 1.0),
                                  child: new AutoSizeText(
                                    data[index]["state"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: new AutoSizeText(
                              "+$a\n$a1",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                              maxLines: 2,
                            ),
                            padding: const EdgeInsets.all(10.0)),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: new AutoSizeText(
                              data[index]["active"],
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                              maxLines: 1,
                            ),
                            padding: const EdgeInsets.all(10.0)),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: new AutoSizeText(
                              "+$c\n$c1",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                              maxLines: 2,
                            ),
                            padding: const EdgeInsets.all(10.0)),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: new AutoSizeText(
                              "+$d\n$d1",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              maxLines: 2,
                            ),
                            padding: const EdgeInsets.all(10.0)),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}