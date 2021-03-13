import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String _BtnName;

  Answer(this.selectHandler, this._BtnName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        child: Text(_BtnName),
        onPressed: selectHandler,
      ),
    );
  }
}
