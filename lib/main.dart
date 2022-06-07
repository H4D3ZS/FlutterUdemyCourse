import 'package:flutter/material.dart';
import 'package:udemy_crash_course/result.dart';

import 'quiz.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your Anime ?',
      'answers': ['One Piece', 'Naruto', 'Bleach', 'Demon Slayer'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cheetah', 'Cat', 'Panther', 'Lion'],
    },
    {
      'questionText': 'What\'s your Manga instructor?',
      'answers': [
        'Solo Leveling',
        'The Rising of The Shield Hero',
        'When I was Reincarnated as A Slime',
        'SuperGene'
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Flutter Udemy Crash Course Maximilliam',
              style: TextStyle(color: Colors.yellow, fontSize: 15),
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestions: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore)),
    );
  }
}
