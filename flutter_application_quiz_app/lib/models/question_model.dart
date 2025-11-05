class QuestionModel {
  String question;
  List<String> options;
  String? correctAnswer;
  bool isMultipleChoice;
  bool isSelected;
  QuestionModel({
    this.isSelected = false,
    required this.options,
    required this.question,
    this.correctAnswer,
    required this.isMultipleChoice,
  });
}
