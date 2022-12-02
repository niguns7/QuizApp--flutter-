import 'package:flutter/material.dart';

import './quiz.dart';

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

  static const _questions = [
    {
      'questionText': 'what\'s your favourait color?',
      'answers': ['Black', 'Red', 'Blue', 'White']
    },
    {
      'questionText': 'what\'s your favourait animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'what\'s your favourait sport?',
      'answers': ['Football', 'Basketball', 'Cricket', 'Tenis']
    },
  ];
  void _answerQuestion() {
 
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
        ? Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questions: [],)
        : Center(child: Text('Quiz is finished'),
        ),
      ),
    );
  }
}
