import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/widgets/next_back_button.dart';

class NextBackSection extends StatelessWidget {
  NextBackSection({required this.nextquestion, required this.backquestion});
  VoidCallback nextquestion;
  VoidCallback backquestion;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NextBackButton(
          onTap: backquestion,
          child: const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 13,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
                Text('Back', style: AppTextStyle.buttonText),
              ],
            ),
          ),
          color: AppColor.primaryColor,
          width: 100,
        ),
        const Spacer(),
        NextBackButton(
          onTap: nextquestion,
          child: const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 13,
              children: [
                Text('Next', style: AppTextStyle.buttonText),
                Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
              ],
            ),
          ),
          color: AppColor.secondaryColor,
          width: 100,
        ),
      ],
    );
  }
}
