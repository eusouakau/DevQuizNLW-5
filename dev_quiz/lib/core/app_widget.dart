import 'package:dev_quiz/result_page/result_answer_page.dart/result_quest_error_page.dart';
import 'package:dev_quiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: ResultQuestErrorPage(),
    );
  }
}
