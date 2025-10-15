import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: const Color.fromARGB(255, 222, 219, 219),
          height: 27,
          width: 27,
        ),
        Container(width: 5),
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 222, 219, 219),
            height: 23,
          ),
        ),
      ],
    );
  }
}
