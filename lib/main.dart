import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("What is your name?"),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
