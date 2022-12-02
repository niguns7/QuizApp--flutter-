import 'package:flutter/material.dart';

class Result  extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase{
    var resultText = 'you did it!';
    if (resultScore <= 18) {
        resultText = 'you are awesom';
    } else if (resultScore <= 12) {
        resultText = 'you are preety good';
    }else if (resultScore <= 8) {
        resultText = 'you are.... strange';
    }else{
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultPhrase, style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
        );
  }
}