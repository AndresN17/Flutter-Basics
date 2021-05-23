import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String answerText;
  int r;
  int g;
  int b;
  Answer(this.selectHandler, this.answerText,this.r, this.g, this.b);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Color.fromRGBO(r,g,b, 1.0),
      ),
    );
  }
}
