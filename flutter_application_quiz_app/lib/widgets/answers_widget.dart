import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/widgets/custom_container.dart';

class AnswersWidget extends StatefulWidget {
  AnswersWidget({
    required this.quizController,
    required this.onCheck,
    required this.textOption,
    required this.questionModel,
    required this.onSelected,
  });
  QuizController quizController;
  QuestionModel questionModel;
  Function(String) onCheck;
  final String textOption;
  VoidCallback onSelected;
  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  Color color = Colors.white;
  Color _activeColor = Colors.transparent;
  _onChanged() {
    color = AppColor.correctAnswerColor;
    _activeColor = widget.quizController.colorOfCheckBox(widget.questionModel);
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      onTap: () {
        _onChanged();
        widget.onCheck(widget.textOption);
        setState(() {});
        widget.onSelected();
      },
      color: color,
      child: Row(
        children: [
          Checkbox(
            value: widget.questionModel.isSelected,
            onChanged: (vlaue) {
              widget.quizController.selectedOption(widget.questionModel);
              _onChanged();
              setState(() {});
              widget.onSelected();
            },
            activeColor: _activeColor,
          ),

          const SizedBox(width: 8),
          Text(widget.textOption, style: AppTextStyle.secondaryText),
        ],
      ),
    );
  }
}
