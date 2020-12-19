import 'package:flutter/material.dart';
import 'package:quizel/result.dart';
import 'package:quizel/viewquiz.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'quizmodel.dart';
import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

class PlayQuiz extends StatefulWidget {
  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  // Future<String>  =
  Future<List<dynamic>> fetchQuestions() async {
    var client = http.Client();
    final response = await client.get('https://ishworgiri.com.np/quiz.json');
    // print(response);
    // Use the compute function to run parsePhotos in a separate isolate.
    return parseQuestions(response.body);
  }

  List<dynamic> parseQuestions(String responseBody) {
    final parsed = jsonDecode(responseBody);
    // print("parsing");

    return parsed;
    // return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: fetchQuestions(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            return ChangeNotifierProvider<QuizModel>(
              create: (context) => QuizModel(snapshot.data),
              child: Scaffold(
                //appBar: AppBar(title: Text("nice app")),
                body: Consumer<QuizModel>(builder: (context, QuizModel, child) {
                  if (QuizModel.questions.length == 0) {
                    return Center(
                      child: Text("Loading..."),
                    );
                  } else {
                    print(snapshot.data);
                    // return Text("Ok");
                    return QuizModel.qindex < QuizModel.questions.length
                        ? ViewQuiz(QuizModel.questions, QuizModel.qindex)
                        : ViewResult(QuizModel.score);
                  }
                }),
              ),
            );
          } else if (snapshot.hasError) {
            //  print("err:");
            //   print(snapshot.error);
            return Scaffold(
                body: Center(
              child: Text("has err"),
            ));
          } else {
            return Scaffold(
                body: Center(
              child: Text("loading quiz"),
            ));
          }
        });
  }
}
