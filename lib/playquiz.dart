import 'package:flutter/material.dart';
import 'package:quizel/result.dart';
import 'package:quizel/viewquiz.dart';
import 'package:provider/provider.dart';
import 'quizmodel.dart';

class PlayQuiz extends StatefulWidget {
  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuizModel>(
      create: (context) => QuizModel(),
      child: Scaffold(
        //appBar: AppBar(title: Text("nice app")),
        body: Consumer<QuizModel>(builder: (context, QuizModel, child) {
          return QuizModel.qindex < QuizModel.questions.length
              ? ViewQuiz(QuizModel.questions, QuizModel.qindex)
              : ViewResult(QuizModel.score);
        }),
      ),
    );
  }
}
