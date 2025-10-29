import 'package:flutter/material.dart';
import 'package:points_calculater/models/task_model.dart';

import 'package:points_calculater/widgets/custom_text_field.dart';
import 'package:points_calculater/widgets/no_task_widget.dart';
import 'package:points_calculater/widgets/task_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TaskModel taskModel = TaskModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          'My Tasks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: taskModel.nameOfTask == null || taskModel.isTaskRemove
                ? Center(child: NoTaskWidget())
                : Column(
                    children: [
                      TaskWidget(
                        taskModel: taskModel,
                      ),
                    ],
                  ),
          )),
          CustomTextField(
            taskModel: taskModel,
          )
        ],
      ),
    );
  }
}
