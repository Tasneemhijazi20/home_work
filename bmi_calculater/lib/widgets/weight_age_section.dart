import 'package:bmi_calculater/core/app_color.dart';
import 'package:bmi_calculater/models/bmi_model.dart';
import 'package:bmi_calculater/widgets/custom_container.dart';
import 'package:bmi_calculater/widgets/weight_age_item.dart';
import 'package:flutter/material.dart';

class WeightAgeSection extends StatelessWidget {
  WeightAgeSection({super.key, required this.bmiModel});
  BMIModel bmiModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomContainer(
            child: WeightAgeItem(
              value: bmiModel.weight,
              title: 'weight'.toUpperCase(),
              onChangeValue: (value) {
                bmiModel.weight = value;
              },
            ),
          ),
        ),
        const SizedBox(width: 25),
        Expanded(
          child: CustomContainer(
            child: WeightAgeItem(
              value: bmiModel.age,
              title: 'age'.toUpperCase(),
              onChangeValue: (value) {
                bmiModel.age = value;
              },
            ),
          ),
        ),
      ],
    );
  }
}
