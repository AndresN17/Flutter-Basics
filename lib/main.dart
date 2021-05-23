import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
  }

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
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: () => print("Pressed with anonymous function!"),
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: answerQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
