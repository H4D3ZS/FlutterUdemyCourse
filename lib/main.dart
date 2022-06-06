import 'dart:io';

import 'package:flutter/material.dart';

import './question.dart';

void main() {
  //Exercise 1  (Ask The User Their Name and Age and how many years they need to be to hundredth)

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  // MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s Your Favorite Color?",
      "What\'s your favorite animal?"
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: <Widget>[
              Text(
                questions[_questionIndex],
              ),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: () {
                  answerQuestions();
                },
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: () => print("Hello"),
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: () {
                  answerQuestions();
                },
              ),
            ],
          )),
    );
  }
}
