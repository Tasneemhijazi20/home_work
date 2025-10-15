import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/first_section.dart';
import 'package:flutter_application_1/widgets/fourth_section.dart';
import 'package:flutter_application_1/widgets/second_section.dart';
import 'package:flutter_application_1/widgets/thrid_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: const Color.fromARGB(255, 213, 230, 244),
                height: 160,
              ),
              Container(height: 16),
              FirstSection(),
              Container(height: 12),
              Divider(
                color: const Color.fromARGB(255, 222, 219, 219),
                thickness: 1,
              ),
              Container(height: 12),
              SecondSection(),
              Container(height: 16),
              ThridSection(),
              Container(height: 16),
              FourthSection(),
              Container(height: 16),
              Container(
                width: double.infinity,
                height: 40,
                color: const Color.fromARGB(255, 222, 219, 219),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
