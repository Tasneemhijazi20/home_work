import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';

class UnSelectedOptionItem extends StatelessWidget {
  const UnSelectedOptionItem({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: AppColor.primaryColor,
            child: CircleAvatar(radius: 9, backgroundColor: Colors.white),
          ),
          const SizedBox(width: 15),
          Text(
            data,
            style: AppTextStyle.regular18(color: AppColor.primaryColor),
          ),
        ],
      ),
    );
  }
}
