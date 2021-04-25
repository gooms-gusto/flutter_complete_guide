import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _main_question_index = 0;
  var _totalscore = 0;

  void _main_answer_question(int score) {
    setState(() {
      _main_question_index = _main_question_index + 1;
      _totalscore = _totalscore + score;
      //if (_questionindex == 3) {
      //  _questionindex = 0;
      // }
    });
    print(_main_question_index);
  }

  @override
  Widget build(BuildContext context) {
    var _main_list_question = [
      {
        'questionText': 'what\'s your hobby?',
        'answer': [
          {'text': 'golf', 'score': 10},
          {'text': 'badminton', 'score': 20},
          {'text': 'race sport', 'score': 50}
        ]
      },
      {
        'questionText': 'what\'s your job?',
        'answer': [
          {'text': 'programmer', 'score': 10},
          {'text': 'singer', 'score': 30},
          {'text': 'doctor', 'score': 50}
        ]
      },
      {
        'questionText': 'what\'s your gender?',
        'answer': [
          {'text': 'male', 'score': 20},
          {'text': 'female', 'score': 50}
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('*Maruso Orders*'),
        ),
        body: _main_question_index < _main_list_question.length
            ? Quiz(
                answerQuestion: _main_answer_question,
                question: _main_list_question,
                questionIndex: _main_question_index)
            : Result(),
      ),
    );
  }
}
