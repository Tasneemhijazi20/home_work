import 'package:bmi_calculater/core/app_text_style.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({super.key, required this.iconData, required this.gender});
  final IconData iconData;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(iconData, size: 100, color: Colors.white),
        Text(gender.toUpperCase(), style: AppTextStyle.titleTextStyle),
      ],
    );
  }
}
