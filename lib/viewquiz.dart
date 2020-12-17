import 'package:flutter/material.dart';
import 'package:quizel/answer.dart';
import 'package:quizel/question.dart';

class ViewQuiz extends StatefulWidget {
  final questions;
  final qindex;
  ViewQuiz(this.questions, this.qindex);

  @override
  _ViewQuizState createState() => _ViewQuizState();
}

class _ViewQuizState extends State<ViewQuiz> {
  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('All Progress will be lost'),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Container(
        //   color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 1,
              child: LinearProgressIndicator(
                value: (widget.qindex + 1) / (widget.questions.length),
              ),
            ),
            Flexible(
              flex: 4,
              child: Question(widget.questions[widget.qindex]["question"]),
            ),
            Flexible(
              flex: 4,
              child: Answer(),
            ),
          ],
        ),
      ),
    );
  }
}
