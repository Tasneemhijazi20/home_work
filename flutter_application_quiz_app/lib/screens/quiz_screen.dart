import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_assets.dart';
import 'package:flutter_application_quiz_app/core/app_decoration.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/widgets/next_back_section.dart';
import 'package:flutter_application_quiz_app/widgets/question_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizController quizController = QuizController();
  PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: AppDecoration.homeDecoration,
        child: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(Assets.quizGradinte, fit: BoxFit.fill),
              ),
              Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      onPageChanged: (index) {
                        quizController.questionindex = index;
                        setState(() {});
                      },
                      controller: pageController,
                      itemCount: quizController.questions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsetsGeometry.only(
                            top: 45,
                            left: 10,
                            right: 10,
                          ),
                          child: QuestionWidget(
                            questionModel: quizController.questions[index],
                            quizController: quizController,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: NextBackSection(
                      pageController: pageController,
                      quizController: quizController,
                    ),
                  ),
                  const SizedBox(height: 45),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
