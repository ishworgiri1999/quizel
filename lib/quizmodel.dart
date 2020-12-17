import 'package:flutter/foundation.dart';

class QuizModel extends ChangeNotifier {
  var questions = [
    {
      "question": "whay is aaa",
      "qoptions": ["this", "that", "or", "idk"],
      "answer": "this",
    },
    {
      "question": "da is nowa",
      "qoptions": ["daa", "aaa", "oddr", "awe"],
      "answer": "awe",
    },
  ];

  var qindex = 0;
  var score = 0;
  void check(ans) {
    if (ans == questions[qindex]["answer"]) {
      score = score + 1;
    }

    qindex = qindex + 1;
    notifyListeners();
  }
}
