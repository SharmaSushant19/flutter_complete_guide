import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionIndex = 0;

  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal ?',
    ];
    
    void answeQuestion() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(
              child: Text(questions[questionIndex]),
              onPressed: answeQuestion,
            ),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: () => print('Answer 2 chosen')),
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
