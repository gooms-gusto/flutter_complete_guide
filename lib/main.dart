import 'package:flutter/material.dart';
import './question.dart';

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
      'Order classic cookies',
      'Order dark chocolate',
      'Order red velvet'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Main Page'),
          ),
          body: Column(
            children: [
              Question(_listquestion[_questionindex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answer_question,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('you have pressed button 2!'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('you have pressed button 3!');
                },
              ),
            ],
          )),
    );
  }
}
