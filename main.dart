import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // questionIndex=questionIndex+1;

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': "What's your favourite color?",
        "answers": ["Black", "White", "Blue", "Green"],
      },
      {
        'questionText': "What's your best school grade?",
        "answers": ["1 st", "2 nd", "3 rd", "4 rd"],
      },
      {
        'questionText': "What's your favourite Game?",
        "answers": ["FootBall", "Cricket", "VolleyBall", "Golf"],
      },
      {
        'questionText': "What's your Dream car?",
        "answers": ["Rolls-Royce", "Bentley", "Volkswagen", "Lincoln"],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Application'),
            ),
            body: Column(
              children: [
                Text(" "),
                Text(" "),
                Question(question[_questionIndex]['questionText']),
                Text(" "),
                Text(" "),
                Text(" "),
                Text(" "),
                ...(question[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
