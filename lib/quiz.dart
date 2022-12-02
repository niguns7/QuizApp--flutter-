import 'package:flutter/material.dart';
import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex}); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // the passed index will forwarded to here
          questions[questionIndex]
              ['questionText'], //accesing to a specific key & index of question
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>) //question index set the index of the question and answer is keyy which gives the lis of answers
            .map((answer) {
          return Answer(answerQuestion,
              answer['Text']); //it passes the answer string to the Answer widget
        }).toList()
      ],
    );
  }
}
