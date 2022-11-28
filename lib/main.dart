import 'package:flutter/material.dart';

//void main () {
//  runApp(MyApp()); //main function to show content on the screen
//}
//context holds some metadata about this widgid
//every widgit are the dart classes which at the end have build methode

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //flutter need to extends either stateless or statefull widgits
  Widget build(BuildContext context) {
    //build is the methode which flutter eill call to draw something tot he screen
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("first app"),
        ),
        body: Text("Hello welcome to flutter"),
      ),
    );
  }
}
