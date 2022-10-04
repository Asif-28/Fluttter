import 'package:flutter/material.dart';

import './result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

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
      'questionText': 'What is your favourite color?',
      'answers': [
        'Black ',
        'Red',
        'Purple',
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        'Dog',
        'Cat ',
        'Cockroach',
      ]
    },
    {
      'questionText': 'Who is your favourite TMKOC character ',
      'answers': [
        'Jethalal',
        'bOObita ji ',
        'Anjali Bhabhi ',
      ]
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('you have more answered ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('My first App', textScaleFactor: 1.6),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
