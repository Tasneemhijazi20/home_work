import 'package:bmi_calculater/core/app_color.dart';
import 'package:bmi_calculater/models/bmi_model.dart';
import 'package:bmi_calculater/screens/result_screen.dart';
import 'package:bmi_calculater/widgets/custom_app_bar.dart';
import 'package:bmi_calculater/widgets/gender_section.dart';
import 'package:bmi_calculater/widgets/height_section.dart';
import 'package:bmi_calculater/widgets/weight_age_section.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  BMIModel bmiModel = BMIModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  spacing: 20,
                  children: [
                    GenderSection(bmiModel: bmiModel),
                    HeightSection(bmiModel: bmiModel),
                    WeightAgeSection(bmiModel: bmiModel),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 66),
                backgroundColor: AppColor.pinkColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.zero,
                ),
              ),
              onPressed: () {
                double bmi = bmiModel.bmiCalculator();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultScreen(bmiResult: bmi);
                    },
                  ),
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
