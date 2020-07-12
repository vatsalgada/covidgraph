import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenTwo extends StatefulWidget {
  final String statevar;
  ScreenTwo(this.statevar) : super();

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.statevar),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchListUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var users = snapshot.data;

                // print(users);
                //print(users.keys);
                print(users[widget.statevar]);
                return ListView(
                  children: [
                    for (var j in users[widget.statevar]['districtData'].keys)
                      if (users[widget.statevar]['districtData'][j]['active']
                              .toString() !=
                          null)
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: new Text(
                                    j,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10.0)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: new Text(
                                    users[widget.statevar]['districtData'][j]
                                            ['confirmed']
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10.0)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: new Text(
                                    users[widget.statevar]['districtData'][j]
                                            ['active']
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10.0)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: new Text(
                                    users[widget.statevar]['districtData'][j]
                                            ['recovered']
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10.0)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: new Text(
                                    users[widget.statevar]['districtData'][j]
                                            ['deceased']
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10.0)),
                            ),
                          ],
                        ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return Text("Loading Data");
              }
            },
          ),
        ),
      ),
    );
  }

  Future fetchListUser() async {
    final response =
        await http.get('https://api.covid19india.org/state_district_wise.json');

    if (response.statusCode == 200) {
      var users = json.decode(response.body);

      return users;
    } else {
      throw Exception("Failed to load users");
    }
  }
}

class Unassigned {
  final String notes;
  final String active;
  final String confirmed;
  final String decreased;
  final String recovered;
  Unassigned(
      {this.notes,
      this.active,
      this.confirmed,
      this.decreased,
      this.recovered});

  factory Unassigned.fromJson(Map<String, dynamic> json) {
    return Unassigned(
      notes: "notes",
      active: "active",
      confirmed: "confirmed",
      decreased: "decreased",
      recovered: "recovered",
    );
  }
}
