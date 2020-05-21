import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal ?',
    ];

    void answeQuestion() {
      setState(() {
        questionIndex = questionIndex + 1;
      });
      print(questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: Column(
          children: [
            Question('The question'),
            RaisedButton(
              child: Text(_questions[questionIndex]),
              onPressed: answeQuestion,
            ),
            RaisedButton(child: Text(_questions[1]), onPressed: () => print('Answer 2 chosen')),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answeQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
