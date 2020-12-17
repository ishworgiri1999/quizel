import 'package:flutter/material.dart';
import 'package:quizel/playquiz.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quizel")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Welcome"),
            RaisedButton(
              child: Text("1"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlayQuiz()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
