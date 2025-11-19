class QuestionModel {
  String title;
  List<String> options;
  String? correctAnswer;
  bool isMultipleChoice;
  String selectedOption;
  String image;
  QuestionModel({
    required this.options,
    required this.image,
    required this.title,
    this.correctAnswer,
    required this.isMultipleChoice,
    this.selectedOption = '',
  });
}
