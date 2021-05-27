import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answer": ["Red", "Blue", "Green"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answer": ["Lion", "Whale", "Monkey"]
    },
  ];

  void _answerQuestion() {
    setState(() => {_questionIndex = _questionIndex + 1});
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    }
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
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(),
        ),
      ),
    );
  }
}
