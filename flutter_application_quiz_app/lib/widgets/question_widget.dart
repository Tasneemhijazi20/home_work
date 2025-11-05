import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/core/app_color.dart';
import 'package:flutter_application_quiz_app/core/app_text_style.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/widgets/answers_widget.dart';

class QuestionWidget extends StatefulWidget {
  QuestionWidget({
    required this.questionModel,
    required this.quizController,
    required this.selectedValue,
  });
  QuestionModel questionModel;
  QuizController quizController;
  String selectedValue;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  String checkedAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: AppColor.secondaryColor,
          ),

          child: Text(
            'Question ${widget.quizController.questionindex + 1}',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        const SizedBox(height: 16),
        Text(widget.questionModel.question, style: AppTextStyle.primaryText),
        const SizedBox(height: 25),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 5),
            itemCount: widget.questionModel.options.length,
            itemBuilder: (context, index) {
              return AnswersWidget(
                quizController: widget.quizController,
                onCheck: (value) {
                  if (!widget.questionModel.isMultipleChoice) {
                    checkedAnswer = value;
                    widget.selectedValue = checkedAnswer;
                  }
                },
                textOption: widget.questionModel.options[index],
                questionModel: widget.questionModel,
                onSelected: () {
                  setState(() {});
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
