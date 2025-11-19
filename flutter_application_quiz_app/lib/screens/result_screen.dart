import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_assets.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_decoration.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/screens/home_screen.dart';
import 'package:flutter_application_quiz_app/screens/quiz_screen.dart';
import 'package:flutter_application_quiz_app/widgets/custom_container.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.quizController});
  final QuizController quizController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: AppDecoration.homeDecoration,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.gradinte, fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Your Result in Quiz',
                            style: AppTextStyle.medium24(color: Colors.white),
                          ),
                          const SizedBox(height: 60),
                          CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  quizController.result.toStringAsFixed(0),
                                  style: AppTextStyle.regular24(
                                    color: AppColor.secondaryColor,
                                  ),
                                ),
                                Text(
                                  '/ ${quizController.calcuateTotalResult().toString()}',
                                  style: AppTextStyle.regular24(
                                    color: AppColor.secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    CustomContainer(
                      text: 'Back To Home',
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen();
                            },
                          ),
                          (route) => false,
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomContainer(
                      text: 'Return Quiz',
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QuizScreen();
                            },
                          ),
                          (route) => false,
                        );
                      },
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
