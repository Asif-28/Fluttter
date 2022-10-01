import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('you have answered the questions');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your name ', 'What is your favourite color '];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('My first App', textScaleFactor: 1.6),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                child: Text('Answer 1'), onPressed: _answerQuestions),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 chosen'),
            ),
          ],
        ),
      ),
    );
  }
}
