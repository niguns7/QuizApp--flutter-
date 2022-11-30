import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function SelectHandler;
  Answer(this.SelectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('answer 1'),
        onPressed: SelectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 16, 136, 235)),
        ),
      ),
    );
  }
}
