class TaskModel {
  DateTime? dateTime;
  String? nameOfTask;
  bool isTaskRemove;
  TaskModel({this.dateTime, this.nameOfTask, this.isTaskRemove = false});
}
