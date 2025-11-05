import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';

class AppTextStyle {
  static const TextStyle primaryText = TextStyle(
    fontSize: 24,
    overflow: TextOverflow.visible,
    color: Colors.white,
  );
  static const TextStyle secondaryText = TextStyle(
    fontSize: 18,
    color: AppColor.primaryColor,
  );
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
