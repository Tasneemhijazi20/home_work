import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/screens/result_screen.dart';
import 'package:flutter_application_quiz_app/widgets/next_back_button.dart';

class NextBackSection extends StatelessWidget {
  NextBackSection({required this.pageController, required this.quizController});
  PageController pageController;
  QuizController quizController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: quizController.questionindex != 0,
          child: NextBackButton(
            onTap: () {
              pageController.previousPage(
                duration: Duration(microseconds: 700),
                curve: Curves.easeIn,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 13,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
                  Text(
                    'Back',
                    style: AppTextStyle.regular16(color: Colors.white),
                  ),
                ],
              ),
            ),
            color: Colors.transparent,
          ),
        ),
        const Spacer(),
        NextBackButton(
          onTap: () {
            if (quizController.questionindex <
                quizController.questions.length - 1) {
              pageController.nextPage(
                duration: Duration(microseconds: 700),
                curve: Curves.easeIn,
              );
            } else {
              quizController.calculatorResult();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(quizController: quizController);
                  },
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 13,
              children: [
                Text(
                  'Next',
                  style: AppTextStyle.regular16(color: Colors.white),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
              ],
            ),
          ),
          color: AppColor.secondaryColor,
        ),
      ],
    );
  }
}
