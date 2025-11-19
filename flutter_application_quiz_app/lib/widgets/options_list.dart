import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/models/question_model.dart';
import 'package:flutter_application_quiz_app/models/quiz_controller.dart';
import 'package:flutter_application_quiz_app/widgets/option_item.dart';

class OptionsList extends StatefulWidget {
  OptionsList({
    super.key,
    required this.questionModel,
    required this.quizController,
  });

  QuestionModel questionModel;
  QuizController quizController;

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;

  bool isMultiOptions = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: widget.questionModel.options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (!widget.questionModel.isMultipleChoice) {
                selectedIndex = index;

                widget.quizController.update(
                  widget.questionModel,
                  widget.questionModel.options[index],
                );
                setState(() {});
              } else {
                isMultiOptions = widget.questionModel.isMultipleChoice;
                setState(() {});
              }
            },
            child: OptionItem(
              isMultiOptions: isMultiOptions,
              isSelected: selectedIndex == index,
              data: widget.questionModel.options[index],
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
