import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetAll;
  Result(this.resultScore, this.resetAll);

  String get resultPhrase {
    String resultText = "You did it!";
    if (resultScore >= 8) {
      resultText = "You are awesome!";
    } else if (resultScore >= 4 && resultScore < 8) {
      resultText = "Pretty Likeable";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(resultPhrase,
          style: TextStyle(
            fontSize: 22,
            color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
          )),
      RaisedButton(
          child: Text(
            "Reset Score!",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: resetAll,
          color: Colors.deepOrangeAccent)
    ]);
  }
}
