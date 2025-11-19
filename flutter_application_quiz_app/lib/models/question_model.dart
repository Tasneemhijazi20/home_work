class QuestionModel {
  String title;
  List<String> options;
  String? correctAnswer;
  bool isMultipleChoice;
  String selectedOption;
  List<String>? selectedOptions = [];
  String image;
  QuestionModel({
    required this.options,
    required this.image,
    required this.title,
    this.correctAnswer,
    required this.isMultipleChoice,
    this.selectedOption = '',
    this.selectedOptions,
  });
}
