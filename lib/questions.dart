//this file is for questions
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //it could be changed internally so the final is added which tells dart that is will never change(run time constant value)

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
