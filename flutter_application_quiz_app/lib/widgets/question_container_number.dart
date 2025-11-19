import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_svg/svg.dart';

class QuestionContainerNumber extends StatelessWidget {
  const QuestionContainerNumber({
    super.key,
    required this.quizController,
    required this.questionModel,
  });
  final QuizController quizController;
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: AppColor.secondaryColor,
      ),

      child: Row(
        spacing: 7,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(questionModel.image),
          Text(
            'Question ${quizController.questionindex + 1}',
            style: AppTextStyle.regular12(),
          ),
        ],
      ),
    );
  }
}
