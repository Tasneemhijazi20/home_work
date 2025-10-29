import 'package:bmi_calculater/core/app_color.dart';
import 'package:bmi_calculater/core/app_text_style.dart';
import 'package:bmi_calculater/models/bmi_model.dart';
import 'package:bmi_calculater/widgets/custom_container.dart';
import 'package:bmi_calculater/widgets/inc_dec_widget.dart';
import 'package:flutter/material.dart';

class WeightAgeItem extends StatefulWidget {
  WeightAgeItem({
    super.key,
    required this.value,
    required this.title,
    required this.onChangeValue,
  });
  int value;
  String title;
  Function(int) onChangeValue;
  @override
  State<WeightAgeItem> createState() => _WeightAgeItemState();
}

class _WeightAgeItemState extends State<WeightAgeItem> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: AppColor.inActiveColor,
      child: Column(
        children: [
          Text(widget.title.toUpperCase(), style: AppTextStyle.titleTextStyle),
          Text(widget.value.toString(), style: AppTextStyle.valueTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IncDecWidget(
                onTap: () {
                  widget.value--;
                  widget.onChangeValue(widget.value);
                  setState(() {});
                },
                iconData: Icons.remove,
              ),
              const SizedBox(width: 8),
              IncDecWidget(
                onTap: () {
                  widget.value++;
                  widget.onChangeValue(widget.value);
                  setState(() {});
                },
                iconData: Icons.add,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
