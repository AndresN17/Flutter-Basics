import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 14,
        ),
        Question(questions[questionIndex]["questionText"].toString()),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score'] as int), answer['text'] as String, 129, 162, 227);
        }).toList(),
      ],
    );
  }
}
