import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'quiz.dart';
import 'result.dart';

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
      'questionText': 'Which is greater than 4?',
      'answers': [
        {'text': '5', 'score': 1},
        {'text': '-5', 'score': 2},
        {'text': '-1/2', 'score': 3},
        {'text': '-25', 'score': 4},
      ]
    },
    {
      'questionText': 'Which is the smallest?',
      'answers': [
        {'text': '-1', 'score': 5},
        {'text': '-1/2', 'score': 6},
        {'text': '0', 'score': 7},
        {'text': '3', 'score': 8},
      ]
    },
    {
      'questionText': 'Combine terms: 12a + 26b -4b – 16a.',
      'answers': [
        {'text': '4a + 22b', 'score': 5},
        {'text': '-28a + 30b', 'score': 6},
        {'text': ' -4a + 22b', 'score': 7},
        {'text': '28a + 30b', 'score': 8},
      ]
    },
    {
      'questionText': 'Simplify: (4 – 5) – (13 – 18 + 2)',
      'answers': [
        {'text': '-1', 'score': 5},
        {'text': '-2', 'score': 6},
        {'text': ' 1', 'score': 7},
        {'text': '2', 'score': 8},
      ]
    },
    {
      'questionText': 'What is |-26|?',
      'answers': [
        {'text': '-26', 'score': 5},
        {'text': '26', 'score': 6},
        {'text': ' 0', 'score': 7},
        {'text': '1', 'score': 8},
      ]
    },
    {
      'questionText': ' Multiply: (x – 4)(x + 5)',
      'answers': [
        {'text': ' x2 + 5x - 20', 'score': 5},
        {'text': 'x2 - 4x - 20', 'score': 6},
        {'text': ' x2 - x - 20', 'score': 7},
        {'text': 'x2 + x - 20', 'score': 8},
      ]
    },
    {
      'questionText': 'Factor: 5x2 – 15x – 20.',
      'answers': [
        {'text': ' 5(x-4)(x+1)', 'score': 5},
        {'text': '-2(x-4)(x+5)', 'score': 6},
        {'text': '-5(x+4)(x-1)', 'score': 7},
        {'text': '5(x+4)(x+1)', 'score': 8},
      ]
    },
    {
      'questionText': ' Factor: 3y(x – 3) -2(x – 3).',
      'answers': [
        {'text': ' (x – 3)(x – 3)', 'score': 5},
        {'text': '(x – 3)2', 'score': 6},
        {'text': '(x – 3)(3y – 2)', 'score': 7},
        {'text': '3y(x – 3)', 'score': 8},
      ]
    },
    {
      'questionText': 'Solve for x: 2x – y = (3/4)x + 6.',
      'answers': [
        {'text': ' (y + 6)/5', 'score': 5},
        {'text': ' 4(y + 6)/5', 'score': 6},
        {'text': '(y + 6)', 'score': 7},
        {'text': '4(y - 6)/5', 'score': 8},
      ]
    },
    {
      'questionText': ' Simplify:(4x2 - 2x) - (-5x2 - 8x).',
      'answers': [
        {'text': ' 3x(3x + 2)', 'score': 5},
        {'text': ' 4(y + 6)/5', 'score': 6},
        {'text': '(x – 3)(3y – 2)', 'score': 7},
        {'text': '4(y - 6)/5', 'score': 8},
      ]
    },
    {
      'questionText': ' Find the value of 3 + 2 • (8 – 3)',
      'answers': [
        {'text': ' 25', 'score': 5},
        {'text': '13', 'score': 6},
        {'text': '17', 'score': 7},
        {'text': '24', 'score': 8},
      ]
    },
    {
      'questionText': 'The average of first 50 natural numbers is …………. .',
      'answers': [
        {'text': ' 25.30', 'score': 5},
        {'text': '25.5', 'score': 6},
        {'text': ' 25.00', 'score': 7},
        {'text': '12.25', 'score': 8},
      ]
    },
    {
      'questionText':
          ' A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to ……….. .',
      'answers': [
        {'text': ' 1/55', 'score': 5},
        {'text': '55', 'score': 6},
        {'text': '3/11', 'score': 7},
        {'text': ' 1/11', 'score': 8},
      ]
    },
    {
      'questionText':
          'The number of 3-digit numbers divisible by 6, is ………….. .',
      'answers': [
        {'text': ' 149', 'score': 5},
        {'text': '166', 'score': 6},
        {'text': '150', 'score': 7},
        {'text': ' 151', 'score': 8},
      ]
    },
    {
      'questionText': 'What is 1004 divided by 2?',
      'answers': [
        {'text': ' 52', 'score': 5},
        {'text': '502', 'score': 6},
        {'text': '520', 'score': 7},
        {'text': ' 5002', 'score': 8},
      ]
    },
    {
      'questionText': '106 × 106 – 94 × 94 = ?',
      'answers': [
        {'text': ' 2004', 'score': 5},
        {'text': '2400', 'score': 6},
        {'text': '1904', 'score': 7},
        {'text': ' 1906', 'score': 8},
      ]
    },
    {
      'questionText':
          'Which of the following numbers gives 240 when added to its own square?',
      'answers': [
        {'text': ' 15', 'score': 5},
        {'text': '16', 'score': 6},
        {'text': '18', 'score': 7},
        {'text': ' 20', 'score': 8},
      ]
    },
    {
      'questionText': 'Evaluation of 83 × 82 × 8-5 is …………. .',
      'answers': [
        {'text': ' 6 : 10', 'score': 5},
        {'text': '15 : 25', 'score': 6},
        {'text': '0.75 : 1.25', 'score': 7},
        {'text': ' 3 : 5', 'score': 8},
      ]
    },
    {
      'questionText': 'The simplest form of 1.5 : 2.5 is …………… .',
      'answers': [
        {'text': ' 1', 'score': 5},
        {'text': '0', 'score': 6},
        {'text': '8', 'score': 7},
        {'text': ' 20', 'score': 8},
      ]
    },
    {
      'questionText': '10-2 means …………. .',
      'answers': [
        {'text': ' milli', 'score': 5},
        {'text': 'centi', 'score': 6},
        {'text': 'micro', 'score': 7},
        {'text': ' deci', 'score': 8},
      ]
    },
    {
      'questionText': 'The square root of 0.0081 is ………… .',
      'answers': [
        {'text': ' 0.09', 'score': 5},
        {'text': '0.9', 'score': 6},
        {'text': ' 0.91', 'score': 7},
        {'text': ' 0.009', 'score': 8},
      ]
    },
  ];
  var _answerIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    print(_answerIndex);

    if (_answerIndex < _questions.length) {
      print('You have more questions.');
    } else {
      print("You have done!");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text('Quiz Test App'),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestion,
                questions: _questions,
                answerIndex: _answerIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
