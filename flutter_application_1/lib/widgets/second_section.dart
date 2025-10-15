import 'package:flutter/material.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 182, 228, 184),
          height: 87,
          width: 177,
          child: Center(
            child: Container(
              color: const Color.fromARGB(255, 234, 247, 235),
              height: 7,
            ),
          ),
        ),
        Container(width: 14),
        Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 243, 206, 151),
              height: 87,
              width: 87,
            ),
            Container(
              color: const Color.fromARGB(255, 246, 234, 218),
              height: 87,
              width: 10,
            ),
            Container(
              color: const Color.fromARGB(255, 243, 206, 151),
              height: 87,
              width: 87,
            ),
          ],
        ),
      ],
    );
  }
}
