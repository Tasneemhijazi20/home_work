import 'package:flutter/material.dart';

class FourthSection extends StatelessWidget {
  const FourthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(color: const Color.fromARGB(255, 156, 229, 233)),
          ),
          Container(width: 16),
          Expanded(
            child: Container(color: const Color.fromARGB(255, 120, 198, 202)),
          ),
        ],
      ),
    );
  }
}
