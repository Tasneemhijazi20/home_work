import 'package:flutter/material.dart';
import 'package:flutter_application_3_bmi_app/screens/result_screen.dart';
import 'package:flutter_application_3_bmi_app/widgets/gender_section.dart';
import 'package:flutter_application_3_bmi_app/widgets/weight_age_section.dart';
import 'dart:math' as math;

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double height = 174;
  int age = 29;
  double weight = 60;
  void _incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void _decrementWeight() {
    if (weight > 0) {
      setState(() {
        weight--;
      });
    }
  }

  void _incrementAge() {
    setState(() {
      age++;
    });
  }

  void _decrementAge() {
    if (age > 0) {
      setState(() {
        age--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141842),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: const Color(0xff141842),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 20,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GenderSection(
                            gender: 'MALE',
                            iconData: Icons.male,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Expanded(
                          child: GenderSection(
                            gender: 'FEMALE',
                            iconData: Icons.female,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff434A75),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toInt().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 66,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),

                          SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 1,
                              activeTrackColor: Colors.white,
                              inactiveTickMarkColor: Colors.grey,
                              thumbColor: const Color(0xFFEB1756),
                            ),
                            child: Slider(
                              value: height,
                              onChanged: (double value) {
                                height = value;
                                setState(() {});
                              },
                              max: 250,
                              min: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: WeightAgeSection(
                            title: 'WEIGHT',
                            number: weight.toString(),
                            increment: _incrementWeight,
                            decrement: _decrementWeight,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Expanded(
                          child: WeightAgeSection(
                            title: 'AGE',
                            number: age.toString(),
                            increment: _incrementAge,
                            decrement: _decrementAge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 66),
              backgroundColor: const Color(0xFFEB1756),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.zero,
              ),
            ),
            onPressed: () {
              double bmi = weight / math.pow((height / 100), 2);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(bmi: bmi.toStringAsFixed(2));
                  },
                ),
              );
            },
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
