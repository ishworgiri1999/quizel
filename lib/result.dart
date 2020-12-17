import 'package:flutter/material.dart';

class ViewResult extends StatelessWidget {
  final int score;
  ViewResult(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Score is :" + score.toString()),
      ),
    );
  }
}
