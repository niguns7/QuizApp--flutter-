import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function SelectHandler; //use final if your value doesnt change from the time  when your progran run
  final String answerText;

  Answer(this.SelectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: SelectHandler,
      ),
    );
  }
}
