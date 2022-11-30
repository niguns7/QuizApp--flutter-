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

  var questions = [
      'what\'s your favourait color?',
      'what\'s your favourait animal?',
    ];
  void _answerQuestion () {
    setState(() {
      _questionIndex= _questionIndex + 1;
    });
   
    print(_questionIndex);
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
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
