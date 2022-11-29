import 'package:flutter/material.dart';

//void main () {
//  runApp(MyApp()); //main function to show content on the screen
//}
//context holds some metadata about this widgid
//every widgit are the dart classes which at the end have build methode

void main() => runApp(MyApp());

//if we pass answerQuestion () that expect result of the function meanwhile in our function is a void type function so we onkly call its name

class MyApp extends StatelessWidget {

  void answerQuestion () {
    print("the chooen answer");
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
            Text("the question!!"),
            ElevatedButton(
              onPressed: answerQuestion, //name of function instead the result
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion, 
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
