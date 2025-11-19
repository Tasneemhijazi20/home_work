import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_assets.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';

class QuizController {
  double _result = 0;
  int questionindex = 0;

  List<QuestionModel> questions = [
    QuestionModel(
      image: Assets.que1,
      options: ['Java', 'Swift', 'Dart', 'Kotlin'],
      title: "What language is Flutter's framework primarily written in?",
      correctAnswer: 'Dart',
      isMultipleChoice: false,
    ),
    QuestionModel(
      image: Assets.que2,
      options: ['Mutable', 'Both', 'Neither', 'Immutable'],
      title: "In Flutter, are widgets mutable or immutable?",
      correctAnswer: 'Immutable',
      isMultipleChoice: false,
    ),
    QuestionModel(
      image: Assets.que3,
      options: ['Vitamin A', 'Vitamin C', 'Vitamin D', ' Vitamin K'],
      title: "Which of the following are fat-soluble vitamins?",
      isMultipleChoice: true,
      selectedOptions: [],
    ),
    QuestionModel(
      image: Assets.que4,
      options: [
        'A basic building block of the UI',
        'A design template',
        'A database connection',
        'A configuration file',
      ],
      title: "In Flutter, what is the primary role of a 'widget'?",
      correctAnswer: 'A basic building block of the UI',
      isMultipleChoice: false,
    ),
  ];

  void calculatorResult() {
    questions.forEach((question) {
      if (!question.isMultipleChoice) {
        if (question.correctAnswer == question.selectedOption) {
          _result += 20;
        }
      } else {
        _result += 10;
      }
    });
  }

  int calcuateTotalResult() {
    int total = 0;
    questions.forEach((question) {
      if (!question.isMultipleChoice) {
        total += 20;
      } else {
        total += 10;
      }
    });
    return total;
  }

  double get result => _result;
  void update(QuestionModel question, String answer) {
    if (question.isMultipleChoice) {
      if (question.selectedOptions!.contains(answer)) {
        question.selectedOptions!.remove(answer);
      } else {
        question.selectedOptions!.add(answer);
      }
    } else {
      question.selectedOption = answer;
    }
  }
}
