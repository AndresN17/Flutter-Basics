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
  final questions = const [
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
    if(_questionIndex < questions.length){
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
          child: _questionIndex < questions.length ? Column(
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
          ): Text("There is no more questions!", style: TextStyle(fontSize: 18, color: Colors.cyanAccent,)) ,
        ),
      ),
    );
  }
}
