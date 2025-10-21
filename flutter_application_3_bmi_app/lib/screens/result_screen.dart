import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi});
  final String bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141842),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: const Color(0xff141842),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RESULT OF YOUR BMI',
                style: TextStyle(color: const Color(0xFFEB1756), fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(bmi, style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}
