import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIdex = 0;

  void answerQuestion(num) {
    setState(() {
      questionIdex = num;
    });
    print(questionIdex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favaorite color?',
      'What\'s your favaorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(questions[questionIdex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: () => answerQuestion(0),
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: () => answerQuestion(1),
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () => answerQuestion(0),
          )
        ]),
      ),
    );
  }
}
