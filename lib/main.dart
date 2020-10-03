import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Material App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    debugPrint("Started The Splash Screen");
    Timer(Duration(seconds: 5), finished);
  }

  void finished() {
    debugPrint("finished.......");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Splash\nScreen",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Cursive",
                  ))
            ],
          )
        ],
      ),
    );
  }
}
