import 'package:bmi_calculater/core/app_color.dart';
import 'package:bmi_calculater/models/bmi_model.dart';
import 'package:bmi_calculater/models/gender_enum.dart';
import 'package:bmi_calculater/widgets/custom_container.dart';
import 'package:bmi_calculater/widgets/gender_item.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatefulWidget {
  GenderSection({super.key, required this.bmiModel});
  BMIModel bmiModel;

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.bmiModel.gender = GenderEnum.male;
              setState(() {});
            },
            child: CustomContainer(
              color: widget.bmiModel.gender == GenderEnum.male
                  ? AppColor.activeColor
                  : AppColor.inActiveColor,
              child: GenderItem(iconData: Icons.male, gender: 'MALE'),
            ),
          ),
        ),
        const SizedBox(width: 25),
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.bmiModel.gender = GenderEnum.female;
              setState(() {});
            },
            child: CustomContainer(
              color: widget.bmiModel.gender != GenderEnum.male
                  ? AppColor.activeColor
                  : AppColor.inActiveColor,
              child: GenderItem(iconData: Icons.female, gender: 'FEMALE'),
            ),
          ),
        ),
      ],
    );
  }
}
