import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionindex = 0;

  void _answer_question() {
    setState(() {
      _questionindex = _questionindex + 1;

      if (_questionindex == 3) {
        _questionindex = 0;
      }
    });
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var _listquestion = [
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
        body: Column(
          children: [
            Question(
              _listquestion[_questionindex]['questionText'],
            ),
            ...(_listquestion[_questionindex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answer_question, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
