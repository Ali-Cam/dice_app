import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: Scaffold(
        backgroundColor: Colors.red[600],
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Text(
            'Dicce Game'
          ),
        ),
        body: DiccePage(),
        ),
    );
  }
}

class DiccePage extends StatefulWidget {
  @override
  _DiccePageState createState() => _DiccePageState();
}

class _DiccePageState extends State<DiccePage> {
  int leftButtonNumber = 5;
  int rightButtonNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changDice();
              },
              child: Image.asset('images/dice$leftButtonNumber.png'),
              ),
            ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changDice();
              },
              child: Image.asset('images/dice$rightButtonNumber.png'),
            ),
            ),
        ],
      ),
    );
  }

  void changDice(){
     setState(() {
        rightButtonNumber = 1 + Random().nextInt(6);
        leftButtonNumber = 1 + Random().nextInt(6);
      });
  }
}