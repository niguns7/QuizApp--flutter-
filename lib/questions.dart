import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //it could be changed internally so the final is added which tells dart that is will never change

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
