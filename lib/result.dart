import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(@required this.resultScore);

  String get resultPhrase {
    var resultText = 'You Did It';
    if (resultScore <= 8) {
      resultText = 'You Are Awesome';
    } else if (resultScore <= 12) {
      resultText = "That's Nice";
    } else {
      resultText = "You are so bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(color: Colors.purple),
        textAlign: TextAlign.center,
      ),
    );
  }
}
