import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  //Exercise 1  (Ask The User Their Name and Age and how many years they need to be to hundredth)

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print('Answer Chosen');
  }

  const MyApp({Key? key}) : super(key: key);

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
              Text("The Following Questions"),
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
