import 'package:flutter/material.dart';
import 'package:points_calculater/models/task_model.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 0.01,
            blurRadius: 5,
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Form(
            key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter name of task';
                      }
                    },
                    onSaved: (newValue) =>
                        widget.taskModel.nameOfTask = newValue!,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                            borderSide: BorderSide.none),
                        fillColor: const Color.fromARGB(77, 227, 225, 225),
                        filled: true,
                        hint: Text(
                          'Add a new task...',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      widget.taskModel.dateTime = DateTime.now();
                      print(' the task is saved');
                      _formKey.currentState!.reset();
                      setState(() {});
                    }
                  },
                  child: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(
                      Icons.add,
                      color: Colors.black45,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
