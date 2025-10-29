import 'package:bmi_calculater/models/gender_enum.dart';
import 'dart:math';

class BMIModel {
  GenderEnum gender;
  int age;
  int weight;
  double height;
  BMIModel({
    this.age = 20,
    this.gender = GenderEnum.male,
    this.height = 170,
    this.weight = 70,
  });
  double bmiCalculator() {
    return (weight / pow((height / 100), 2));
  }
}
