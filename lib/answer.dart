import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final answerText;

  Answers(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.green,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
