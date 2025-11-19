import 'package:flutter/material.dart';

class AppDecoration {
  AppDecoration._();
  static BoxDecoration selectedAnswerDecoration = BoxDecoration(
    gradient: secondGradient,
    borderRadius: BorderRadius.circular(8),
  );
  static BoxDecoration homeDecoration = BoxDecoration(gradient: firstGradient);
  static LinearGradient secondGradient = LinearGradient(
    colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
    begin: AlignmentGeometry.bottomLeft,
    end: AlignmentGeometry.topRight,
  );
  static LinearGradient firstGradient = LinearGradient(
    colors: [Color(0xff060B26), Color(0xff1A1F37)],
    begin: AlignmentGeometry.topLeft,
    end: AlignmentGeometry.bottomRight,
  );
}
