import 'package:flutter/foundation.dart';

class QuizModel extends ChangeNotifier {
  var questions = [
    {
      "question": "Who is the youngest person to recieve a Nobel Prize?",
      "qoptions": [
        "Lawrence Bragg",
        "Werner Heisenberg",
        "Yasser Arafat",
        "Malala Yousafzai"
      ],
      "answer": "Malala Yousafzai",
    },
    {
      "question":
          "Which of the following carbonated soft drinks were introduced first?",
      "qoptions": ["Dr. Pepper", "Coca-Cola", "Sprite", "Mountain Dew"],
      "answer": "Dr. Pepper",
    },
  ];

  var qindex = 0;
  var score = 0;
  void check(ans) {
    if (ans) {
      score = score + 1;
    }

    qindex = qindex + 1;
    notifyListeners();
  }
}
