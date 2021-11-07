import 'package:flutter/cupertino.dart';
import 'package:quiz_test_app/answer.dart';
import 'package:quiz_test_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int answerIndex;
  final Function answerQuestions;

  Quiz(
      {required this.answerQuestions,
      required this.questions,
      required this.answerIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[answerIndex]['questionText'] as String),
        ...(questions[answerIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answerQuestions(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
