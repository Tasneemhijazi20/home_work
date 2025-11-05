import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';

class NextBackButton extends StatelessWidget {
  const NextBackButton({
    required this.onTap,
    required this.child,
    required this.color,
    required this.width,
  });
  final VoidCallback onTap;
  final Widget child;
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        height: 40,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.secondaryColor),
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
