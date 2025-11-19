import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/widgets/selected_option_item.dart';
import 'package:flutter_application_quiz_app/widgets/unselected_option_item.dart';

class OptionItem extends StatelessWidget {
  OptionItem({
    super.key,
    required this.isSelected,
    required this.data,
    required this.isMultiOptions,
  });
  bool isSelected;
  bool isMultiOptions;
  String data;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedOptionItem(data: data, isMultiOptions: isMultiOptions)
        : UnSelectedOptionItem(data: data);
  }
}
