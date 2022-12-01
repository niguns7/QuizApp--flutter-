import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';
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

  static const questions = [
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
       if (_questionIndex < questions.length) {
        print("we have more quesstions");
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
        body: Column(
          children: [
            Question(
              // the passed index will forwarded to here
              questions[_questionIndex]['questionText'], //accesing to a specific key & index of question
            ),
            ...(questions[_questionIndex]['answers'] as List<String>) //question index set the index of the question and answer is keyy which gives the lis of answers
                .map((answer) {
              return Answer(_answerQuestion, answer); //it passes the answer string to the Answer widget
            }).toList()
          ],
        ),
      ),
    );
  }
}
