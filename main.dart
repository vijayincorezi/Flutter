import 'package:flutter/material.dart';

import "./quiz.dart";
import "./result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  final _questions = const [
    {
      'questionText': "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 1},
        {"text": "White", "score": 10},
        {"text": "Green", "score": 5},
        {"text": "Blue", "score": 7}
      ],
    },
    {
      'questionText': "What's your best school grade?",
      "answers": [
        {"text": "1 st", "score": 10},
        {"text": "2 nd", "score": 8},
        {"text": "3 rd", "score": 5},
        {"text": "4 th", "score": 3}
      ],
    },
    {
      'questionText': "What's your favourite Game?",
      "answers": [
        {"text": "Golf", "score": 10},
        {"text": "VolleyBall", "score": 5},
        {"text": "Cricket", "score": 3},
        {"text": "FootBall", "score": 1}
      ],
    },
    {
      'questionText': "What's your Dream car?",
      "answers": [
        {"text": "Rolls-Royce", "score": 10},
        {"text": "Bentley", "score": 5},
        {"text": "Audi", "score": 3},
        {"text": "Volkswagen", "score": 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore=0;

void _resetQuiz()
{
  setState(() {
    _questionIndex=0;
    _totalScore=0;
  });
}

  void _answerQuestion(int score) {

    _totalScore=_totalScore+score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // questionIndex=questionIndex+1;

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more quesitons");
    } else {
      print("No more questions");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Corner'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}

