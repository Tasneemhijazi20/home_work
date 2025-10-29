import 'package:bmi_calculater/core/app_color.dart';
import 'package:bmi_calculater/core/app_text_style.dart';
import 'package:bmi_calculater/models/bmi_model.dart';
import 'package:bmi_calculater/widgets/custom_container.dart';
import 'package:bmi_calculater/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  HeightSection({super.key, required this.bmiModel});
  BMIModel bmiModel;
  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Text('HIEGHT', style: AppTextStyle.titleTextStyle),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.bmiModel.height.toInt().toString(),
                style: AppTextStyle.valueTextStyle,
              ),
              Text(
                'cm',
                style: AppTextStyle.titleTextStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
          CustomSlider(
            value: widget.bmiModel.height,
            onChanged: (value) {
              widget.bmiModel.height = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
