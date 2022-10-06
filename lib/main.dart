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
        {'text': 'Black ', 'score': '10'},
        {'text': 'Red', 'score': '6'},
        {'text': 'Green ', 'score': '3'},
        {'text': 'White', 'score': '1'},
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Dog ', 'score': '10'},
        {'text': 'Cat', 'score': '6'},
        {'text': 'Cockroach ', 'score': '3'},
        {'text': 'Boyfriend', 'score': '1'},
      ]
    },
    {
      'questionText': 'Who is your favourite TMKOC character ',
      'answers': [
        {'text': 'Madavi aunty', 'score': '7'},
        {'text': 'Raushan Bhabhi', 'score': '6'},
        {'text': 'bOObita ji ', 'score': '3'},
        {'text': 'Anjali Bhabhi', 'score': '1'},
      ]
    },
    {
      'questionText': 'What is your favourite time pass',
      'answers': [
        {'text': 'Sleepig ', 'score': '1'},
        {'text': 'Dancing', 'score': '6'},
        {'text': 'Playing ', 'score': '3'},
        {'text': 'Mobile Phone ', 'score': '10'},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion() {
    // _totalScore += score;
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
