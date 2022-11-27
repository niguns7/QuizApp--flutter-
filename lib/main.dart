import 'package:flutter/material.dart';

void main () {
  runApp(MyApp()); //main function to show content on the screen
}

class MyApp extends StatelessWidget {
  Widget build (BuildContext context){
    return MaterialApp(home: Text('Hello!!'),);
  }
}