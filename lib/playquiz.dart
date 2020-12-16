import 'package:flutter/material.dart';
import 'package:quizel/result.dart';
import 'package:quizel/viewquiz.dart';

class PlayQuiz extends StatefulWidget {
  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  var questions = [
    {
      "question": "whay is aaa",
      "qoptions": ["this", "that", "or", "idk"],
      "answer": "this",
    },
    {
      "question": "da is nowa",
      "qoptions": ["daa", "aaa", "oddr", "awe"],
      "answer": "awe",
    },
  ];

  var qindex = 0;
  var score = 0;

  void statechanger(data) {
    if (data) {
      score = score + 1;
    }

    setState(() {
      if (data == questions[qindex]["answer"]) {
        score = score + 1;
      }
      qindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return qindex < questions.length
        ? ViewQuiz(questions, qindex, statechanger)
        : ViewResult(score);
  }
}
