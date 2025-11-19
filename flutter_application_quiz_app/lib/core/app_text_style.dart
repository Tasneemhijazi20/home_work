import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle regular24({Color? color}) {
    return TextStyle(
      fontSize: 24,
      overflow: TextOverflow.visible,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontSize: 24,
      overflow: TextOverflow.visible,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle regular18({Color? color}) {
    return TextStyle(
      fontSize: 18,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontSize: 18,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle medium16({Color? color}) {
    return TextStyle(
      fontSize: 16,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontSize: 16,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontSize: 12,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
    );
  }

  static TextStyle medium12({Color? color}) {
    return TextStyle(
      fontSize: 12,
      color: color == null ? Colors.white : color,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
    );
  }
}
