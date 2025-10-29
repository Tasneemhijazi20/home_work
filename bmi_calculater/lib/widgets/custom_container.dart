import 'package:bmi_calculater/core/app_color.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.color, required this.child});
  final Color? color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color == null ? AppColor.inActiveColor : color,
      ),
      child: child,
    );
  }
}
