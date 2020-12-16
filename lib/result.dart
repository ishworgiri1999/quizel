import 'package:flutter/material.dart';

class ViewResult extends StatelessWidget {
  final int score;
  ViewResult(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Score is :" + score.toString()),
    );
  }
}
