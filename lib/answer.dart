import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizel/quizmodel.dart';
import 'package:provider/provider.dart';

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();
}

something(ans) {}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    //var options = widget.options;

    return Consumer<QuizModel>(builder: (context, QuizModel, child) {
      return Column(
        children:
            (QuizModel.questions[QuizModel.qindex]["qoptions"] as List<String>)
                .map((opt) => SizedBox(
                      width: 250,
                      child: RaisedButton(
                        onPressed: () => QuizModel.check(opt),
                        child: Text(
                          opt,
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                        // duration: Duration(milliseconds: 300),
                      ),
                    ))
                .toList(),
      );
    });
  }
}
