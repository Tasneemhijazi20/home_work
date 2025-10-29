import 'package:bmi_calculater/core/app_color.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  CustomSlider({super.key, required this.value, required this.onChanged});
  double value;
  Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        thumbColor: AppColor.pinkColor,
        trackHeight: 1,
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.grey,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 11.5),
        overlayColor: AppColor.pinkColor.withAlpha(20),
      ),
      child: Slider(value: value, onChanged: onChanged, min: 50, max: 250),
    );
  }
}
