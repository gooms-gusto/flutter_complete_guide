import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String _questiontext;

  Question(this._questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _questiontext,
        style: TextStyle(
            color: Colors.brown,
            decoration: TextDecoration.none,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
            fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
