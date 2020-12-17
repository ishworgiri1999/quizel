import 'package:flutter/material.dart';
import 'package:quizel/playquiz.dart';
import 'package:provider/provider.dart';
import 'quizmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlayQuiz());
  }
}
