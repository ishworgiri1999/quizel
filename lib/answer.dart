import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final options;
  final correct;
  final Function statechanger;
  Answer(this.options, this.correct, this.statechanger);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  var options = ["1", "2"];
  var data = "44";
  var bcolor = Colors.blue;
  void checkanswer(ans) {
    setState(() {
      if (ans == widget.correct) {
        bcolor = Colors.green;
      } else {
        bcolor = Colors.red;
      }
    });

    widget.statechanger(true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: (widget.options as List<String>)
          .map((opt) => SizedBox(
                width: 250,
                child: RaisedButton(
                  onPressed: () => checkanswer(opt),
                  child: Text(
                    opt,
                    style: TextStyle(color: Colors.white),
                  ),
                  color: bcolor,
                  // duration: Duration(milliseconds: 300),
                ),
              ))
          .toList(),
    );
  }
}
