import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  // const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
