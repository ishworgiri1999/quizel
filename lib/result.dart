import 'package:flutter/material.dart';

class ViewResult extends StatelessWidget {
  final int score;
  ViewResult(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Flexible(
          flex: 5,
          child: Text(
            "Score is :" + score.toString(),
          ),
        ),
        Flexible(
          flex: 1,
          child: RaisedButton(
            child: Text(
              "Go Back",
            ),
            onPressed: () => Navigator.pop(context),
          ),
        )
      ]),
    );
  }
}
