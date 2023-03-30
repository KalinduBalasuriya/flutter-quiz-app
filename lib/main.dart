import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      " What is your favorite color?",
      'What is your favourite animal',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My Fisrt App"),
      ),
      body: Column(
        children: [
          Text(questions.elementAt(questionIndex)),
          ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
          ElevatedButton(
              onPressed: () => print("Answer 2 choosen"),
              child: Text("Answer 2")),
          ElevatedButton(
              onPressed: () {
                print("answer 3 choosen");
              },
              child: Text("Answer 3")),
        ],
      ),
    ));
  }
}
