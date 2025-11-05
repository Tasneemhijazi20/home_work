import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/screens/result_screen.dart';
import 'package:flutter_application_quiz_app/widgets/next_back_section.dart';
import 'package:flutter_application_quiz_app/widgets/question_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizController quizController = QuizController();
  String value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 40, bottom: 22, left: 10, right: 10),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    QuestionWidget(
                      selectedValue: value,
                      quizController: quizController,
                      questionModel: quizController
                          .questions[quizController.questionindex],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              NextBackSection(
                nextquestion: () {
                  if (quizController.questionindex <
                      quizController.questions.length) {
                    quizController.questionindex++;
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultScreen(result: 0);
                        },
                      ),
                    );
                  }
                },
                backquestion: () {
                  if (quizController.questionindex > 0) {
                    quizController.questionindex--;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
