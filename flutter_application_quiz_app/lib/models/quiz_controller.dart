import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';

class QuizController {
  int result = 0;
  int questionindex = 0;
  List<String> selectedText = [];
  List<QuestionModel> questions = [
    QuestionModel(
      options: ['Java', 'Swift', 'Dart', 'Kotlin'],
      question: "What language is Flutter's framework primarily written in?",
      correctAnswer: 'Dart',
      isMultipleChoice: false,
    ),
    QuestionModel(
      options: ['Mutable', 'Both', 'Neither', 'Immutable'],
      question: "In Flutter, are widgets mutable or immutable?",
      correctAnswer: 'Immutable',

      isMultipleChoice: false,
    ),
    QuestionModel(
      options: ['Vitamin A', 'Vitamin C', 'Vitamin D', ' Vitamin K'],
      question: "Which of the following are fat-soluble vitamins?",

      isMultipleChoice: true,
    ),
  ];
  void nextQuestion() {
    if (questionindex < questions.length) {
      questionindex++;
    }
  }

  void backQuestion() {
    if (questionindex > 0) {
      questionindex--;
    }
  }

  Color colorOfCheckBox(QuestionModel question) {
    if (!question.isMultipleChoice) {
      return AppColor.primaryColor;
    } else {
      return Colors.transparent;
    }
  }

  void selectedOption(QuestionModel question) {
    question.isSelected != question.isSelected;
  }
}
