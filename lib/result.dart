import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function resethandler;

  Result(this._score, this.resethandler);

  String get resultPhrase {
    return 'You did it $_score';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(child: Text('Restart Quiz'), onPressed: resethandler)
        ],
      ),
    );
  }
}
