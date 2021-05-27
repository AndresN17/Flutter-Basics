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
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answer": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 5},
        {"text": "Green", "score": 3}
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answer": [
        {"text": "Lion", "score": 10},
        {"text": "Cat", "score": 5},
        {"text": "Dog", "score": 3}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = _totalScore + 1;
    setState(() => {_questionIndex = _questionIndex + 1});
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    }
  }

  void _resetAll() {
    setState(() => {
          _totalScore = 0,
          _questionIndex = 0,
        });
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
              : Result(_totalScore, _resetAll),
        ),
      ),
    );
  }
}
