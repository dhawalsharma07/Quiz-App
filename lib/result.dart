import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function() resetHandler;

  Result(this.resultscore, this.resetHandler);
  String get resultphase {
    var restext = 'Test Passed';
    String t = resultscore.toString();
    if (resultscore <= 15) {
      restext = 'You are good';
      restext += '\n Your Score is \n' + t;
    }
    if (resultscore > 15 && resultscore <= 20) {
      restext = 'You are great';
      restext += '\n Your Score is \n' + t;
    }
    if (resultscore > 20) {
      restext = 'You are Excellent';
      restext += '\n Your Score is \n' + t;
    }
    return restext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
