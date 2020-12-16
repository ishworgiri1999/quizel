import 'package:flutter/material.dart';
import 'package:quizel/answer.dart';
import 'package:quizel/question.dart';

class ViewQuiz extends StatefulWidget {
  final questions;
  final qindex;
  final Function statechanger;
  ViewQuiz(this.questions, this.qindex, this.statechanger);

  @override
  _ViewQuizState createState() => _ViewQuizState();
}

class _ViewQuizState extends State<ViewQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            child: LinearProgressIndicator(
              value: 0.1 + 0.1 * widget.qindex,
            ),
          ),
          Flexible(
            flex: 4,
            child: Question(widget.questions[widget.qindex]["question"]),
          ),
          Flexible(
            flex: 4,
            child: Answer(widget.questions[widget.qindex]["qoptions"],
                widget.questions[widget.qindex]["answer"], widget.statechanger),
          ),
        ],
      ),
    );
  }
}
