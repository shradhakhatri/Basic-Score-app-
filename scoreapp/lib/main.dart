import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restart_alt_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text("Score is",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ))),
          Center(
              child: Text(number.toString(),
                  style: TextStyle(
                    fontSize: 125,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ))),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Increase",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increaseNumber,
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "Decrease",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreaseNumber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
