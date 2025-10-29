import 'package:flutter/material.dart';

class NoTaskWidget extends StatelessWidget {
  const NoTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          const Icon(
            Icons.check_circle_outline_rounded,
            color: Color.fromARGB(255, 167, 217, 217),
            size: 88,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'No tasks yet',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Add a task to get started',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
