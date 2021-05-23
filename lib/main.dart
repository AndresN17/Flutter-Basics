import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    const questions = [
      {
        "questionText": "What's your favorite color?",
        "answer": ["Red", "Blue", "Green"]
      },
      {
        "questionText": "What's your favorite animal?",
        "answer": ["Lion", "Whale", "Monkey"]
      },
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
              SizedBox(
                height: 14,
              ),
              Question(questions[_questionIndex]["questionText"].toString()),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer, 212, 20, 17);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
