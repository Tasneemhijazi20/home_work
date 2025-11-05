import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/screens/quiz_screen.dart';
import 'package:flutter_application_quiz_app/widgets/custom_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 40, bottom: 22, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 112),
                    child: Text(
                      'Good morning',
                      style: TextStyle(
                        color: AppColor.greyTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text('New topic is waiting', style: AppTextStyle.primaryText),
                ],
              ),
              Expanded(child: Container(width: double.infinity)),
              CustomContainer(
                child: const Text(
                  'Start Quiz',
                  style: AppTextStyle.secondaryText,
                ),
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
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
