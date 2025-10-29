import 'package:flutter/material.dart';
import 'package:points_calculater/models/task_model.dart';

class TaskWidget extends StatefulWidget {
  TaskWidget({super.key, required this.taskModel});
  TaskModel taskModel;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isTaskEnd = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 250, 247, 247),
      elevation: 3,
      child: Padding(
        padding:
            const EdgeInsetsGeometry.symmetric(vertical: 14, horizontal: 25),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                if (isTaskEnd == false) {
                  isTaskEnd = true;
                  setState(() {});
                } else {
                  isTaskEnd = false;
                  setState(() {});
                }
              },
              child: !isTaskEnd
                  ? Container(
                      width: 19,
                      height: 19,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.black87)),
                    )
                  : Container(
                      width: 19,
                      height: 19,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.green),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
            ),
            const SizedBox(
              width: 22,
            ),
            Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.taskModel.nameOfTask!,
                  style: TextStyle(
                    decoration: isTaskEnd
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: !isTaskEnd ? Colors.black : Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Created: ${widget.taskModel.dateTime!.day}/${widget.taskModel.dateTime!.month}/${widget.taskModel.dateTime!.year}',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                  ),
                )
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  widget.taskModel.isTaskRemove = true;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.delete_outlined,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
