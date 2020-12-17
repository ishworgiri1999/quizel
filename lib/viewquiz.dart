import 'package:flutter/material.dart';
import 'package:quizel/answer.dart';
import 'package:quizel/question.dart';

class ViewQuiz extends StatelessWidget {
  final questions;
  final qindex;
  ViewQuiz(this.questions, this.qindex);

  @override
  build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            child: LinearProgressIndicator(
              value: 0.1 + 0.1 * qindex,
            ),
          ),
          Flexible(
            flex: 4,
            child: Question(questions[qindex]["question"]),
          ),
          Flexible(
            flex: 4,
            child: Answer(),
          ),
        ],
      ),
    );
  }
}
