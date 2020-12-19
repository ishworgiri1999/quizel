import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizel/quizmodel.dart';
import 'package:provider/provider.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final qzm = Provider.of<QuizModel>(context, listen: false);

    //var ptions = widget.options;
    return Column(
      children: (qzm.questions[qzm.qindex]["qoptions"] as List<dynamic>)
          .map((opt) => AnswerOption(qzm, opt))
          .toList(),
    );
  }
}

class AnswerOption extends StatefulWidget {
  var qzm;
  var opt;
  AnswerOption(this.qzm, this.opt);
  @override
  _AnswerOptionState createState() => _AnswerOptionState();
}

var colordata = Colors.white;

class _AnswerOptionState extends State<AnswerOption> {
  _checker(ans) {
    // print(idx);
    if (widget.qzm.questions[widget.qzm.qindex]["answer"] == ans) {
      print("nice");
      setState(() {
        colordata = Colors.green;
      });

      Timer(
          Duration(milliseconds: 500),
          () => {
                setState(() {
                  colordata = Colors.white;
                }),
                widget.qzm.check(true),
              });
    } else {
      setState(() {
        colordata = Colors.red;
      });
      Timer(
          Duration(milliseconds: 1000),
          () => {
                setState(() {
                  colordata = Colors.white;
                }),
                widget.qzm.check(false),
              });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: RaisedButton(
          onPressed: () => _checker(widget.opt),
          child: Text(
            widget.opt,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          color: colordata
          // duration: Duration(milliseconds: 300),
          ),
    );
  }
}
