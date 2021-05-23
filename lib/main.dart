import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => {_questionIndex = _questionIndex + 1});
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    var answers = [
      "Red",
      "Blue",
      "Green",
    ];

    return MaterialApp(
      title: "My First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text(answers[0]),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text(answers[1]),
                onPressed: () => print("Pressed with anonymous function!"),
              ),
              RaisedButton(
                child: Text(answers[2]),
                onPressed: _answerQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
