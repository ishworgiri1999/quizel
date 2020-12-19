import 'package:flutter/foundation.dart';

class QuizModel extends ChangeNotifier {
  var questions;

  QuizModel(this.questions);

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
