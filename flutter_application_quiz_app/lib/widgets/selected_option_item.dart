import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_assets.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_decoration.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';

import 'package:flutter_svg/svg.dart';

class SelectedOptionItem extends StatelessWidget {
  const SelectedOptionItem({
    super.key,
    required this.data,
    required this.isMultiOptions,
  });
  final String data;
  final bool isMultiOptions;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: AppDecoration.selectedAnswerDecoration,
      child: Row(
        children: [
          isMultiOptions
              ? CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColor.primaryColor,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: AppColor.secondaryColor,
                    child: SvgPicture.asset(Assets.checkIcon),
                  ),
                )
              : CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColor.primaryColor,
                  child: SvgPicture.asset(
                    Assets.checkIcon,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
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
