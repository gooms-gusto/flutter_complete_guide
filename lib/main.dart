import 'package:flutter/material.dart';
import './quiz.dart';

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

  void _main_answer_question() {
    setState(() {
      _main_question_index = _main_question_index + 1;

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
        'answer': ['golf', 'badminton', 'race sport']
      },
      {
        'questionText': 'what\'s your job?',
        'answer': ['programmer', 'singer', 'doctor']
      },
      {
        'questionText': 'what\'s your gender?',
        'answer': ['male', 'female']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('==Maruso Page=='),
        ),
        body: _main_question_index < _main_list_question.length
            ? Quiz(
                answerQuestion: _main_answer_question,
                question: _main_list_question,
                questionIndex: _main_question_index)
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
