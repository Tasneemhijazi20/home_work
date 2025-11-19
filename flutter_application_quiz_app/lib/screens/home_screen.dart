import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_assets.dart';
import 'package:flutter_application_quiz_app/core/app_decoration.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/screens/quiz_screen.dart';
import 'package:flutter_application_quiz_app/widgets/custom_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'Good morning',
                      style: AppTextStyle.regular16(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Text(
                      'New topic is waiting',
                      style: AppTextStyle.medium24(),
                    ),

                    Expanded(child: Image(image: AssetImage(Assets.homeImage))),

                    CustomContainer(
                      text: 'Start Quiz',
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QuizScreen();
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
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
