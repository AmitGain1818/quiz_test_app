import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'done';

    if (resultScore <= 8) {
      resultText = 'Your Are Fail.\n Your Score-${resultScore}';
    } else if (resultScore <= 10) {
      resultText = 'Your Are Average.\n Your Score-${resultScore}';
    } else if (resultScore <= 15) {
      resultText = 'You Are Good.\n Your Score-${resultScore}';
    } else {
      resultText = 'You Are Excellent.\n Your Score-${resultScore}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [
              Text(
                resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: resetHandler,
                child: Text('Restart Quiz'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
