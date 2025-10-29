import 'package:bmi_calculater/core/app_color.dart';
import 'package:bmi_calculater/core/app_text_style.dart';
import 'package:bmi_calculater/screens/input_screen.dart';
import 'package:bmi_calculater/widgets/custom_app_bar.dart';
import 'package:bmi_calculater/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmiResult});
  final double bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,

      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: CustomContainer(
                child: Column(
                  children: [
                    Row(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your BMI Result =',
                          style: AppTextStyle.titleTextStyle,
                        ),
                        Text(
                          bmiResult.toStringAsFixed(2),
                          style: AppTextStyle.valueTextStyle.copyWith(
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 60),
                        backgroundColor: AppColor.pinkColor,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return InputScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'RECALCULATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
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
