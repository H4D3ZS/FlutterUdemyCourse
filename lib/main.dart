import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
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

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Udemy Crash Course Maximilliam',
            style: TextStyle(color: Colors.yellow, fontSize: 15),
          ),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'You did it!',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
      ),
    );
  }
}
