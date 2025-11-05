import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.result});
  final double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Result in Quiz', style: AppTextStyle.primaryText),
            Text(
              result.toStringAsFixed(1),
              style: AppTextStyle.primaryText.copyWith(
                color: AppColor.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
