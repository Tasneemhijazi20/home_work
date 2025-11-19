import 'package:flutter/material.dart';

import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/widgets/options_list.dart';
import 'package:flutter_application_quiz_app/widgets/question_container_number.dart';

class QuestionWidget extends StatelessWidget {
  QuestionWidget({required this.questionModel, required this.quizController});
  QuestionModel questionModel;
  QuizController quizController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionContainerNumber(
          quizController: quizController,
          questionModel: questionModel,
        ),
        const SizedBox(height: 22),
        Text(questionModel.title, style: AppTextStyle.medium24()),
        const SizedBox(height: 30),
        OptionsList(
          questionModel: questionModel,
          quizController: quizController,
        ),
      ],
    );
  }
}
