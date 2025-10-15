import 'package:flutter/material.dart';

class ThridSection extends StatelessWidget {
  const ThridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 87,
      color: Color.fromARGB(255, 245, 231, 248),
      child: Row(
        children: [
          Container(
            height: 87,
            width: 88,
            color: Color.fromARGB(255, 226, 187, 235),
          ),
          Container(width: 12),
          Container(
            height: 87,
            width: 88,
            color: Color.fromARGB(255, 214, 167, 224),
            child: Center(
              child: Container(
                height: 12,
                color: const Color.fromARGB(255, 236, 201, 241),
              ),
            ),
          ),
          Container(width: 12),
          Container(
            height: 87,
            width: 88,
            color: Color.fromARGB(255, 226, 187, 235),
          ),
        ],
      ),
    );
  }
}
