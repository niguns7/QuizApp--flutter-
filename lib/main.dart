import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

//void main () {
//  runApp(MyApp()); //main function to show content on the screen
//}
//context holds some metadata about this widgid
//every widgit are the dart classes which at the end have build methode

void main() => runApp(MyApp());

//if we pass answerQuestion () that expect result of the function meanwhile in our function is a void type function so we onkly call its name
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'what\'s your favourait color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 7},
        {'text': 'white', 'score': 8},
      ]
    },
    {
      'questionText': 'what\'s your favourait animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 7},
        {'text': 'Snake', 'score': 6},
        {'text': 'Horse', 'score': 9},
        {'text': 'Lion', 'score': 10},
      ]
    },
    {
      'questionText': 'what\'s your favourait sport?',
      'answers': [
        {'text': 'Football', 'score': 8},
        {'text': 'Basketball', 'score': 10},
        {'text': 'Cricket', 'score': 9},
        {'text': 'Tenis', 'score': 7},
      ]
    },
  ];
  void _answerQuestion( int Score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more quesstions");
    } else {
      print("we have no more quesstions");
    }
  }

  //flutter need to extends either stateless or statefull widgits
  @override
  Widget build(BuildContext context) {
    //build is the methode which flutter eill call to draw something tot he screen
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('first app'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
