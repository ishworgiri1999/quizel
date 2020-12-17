import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      //margin: const EdgeInsets.all(10.0),
      child: Text(
        question,
        textAlign: TextAlign.center,
        //overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }
}
